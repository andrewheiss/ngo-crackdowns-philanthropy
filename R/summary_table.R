#' Generate a summary table with sparkgraphs
#' 
#' Create a fancy summary Markdown table for numeric and factor variables with tiny ggplot sparkgraphs
#' 
#' @name summary_table
NULL

my_as_numeric <- function(x) {
  is_num <- suppressWarnings(!any(is.na(as.numeric(x))))
  
  if (is_num) {
    as.numeric(x)
  } else {
    x
  }
}

level_summary <- function(x, variable, df) {
  variable <- as.character(variable)
  if (is.factor(df[[variable]])) {
    x_levels <- levels(df[[variable]])
  } else {
    x_levels <- unique(df[[variable]])
  }
  
  factor_summary <- tibble(x) %>% 
    count(x) %>%
    mutate(pct = n / sum(n),
           fancy = paste0(x, " (", n, "; ", percent(pct), ")"),
           x = factor(x, levels = x_levels, ordered = TRUE)) 
  
  inline_summary <- factor_summary %>% arrange(x) %>% 
    pull(fancy) %>% paste(collapse = " | ")
  
  fig_bar <- ggplot(factor_summary, aes(x = x, y = n)) +
    geom_bar(stat = "identity", fill = "grey50") +
    theme_spark()
  
  file_name <- gsub("\\.| ", "_", tolower(variable))
  md_img <- paste0("![](output/figures/summary-table/", file_name, ")")
  
  ggsave(fig_bar, filename = here("analysis", "output", "figures", "summary-table",
                                  paste0(file_name, ".pdf")), 
         width = 1, height = 0.2, device = cairo_pdf)
  ggsave(fig_bar, filename = here("analysis", "output", "figures", "summary-table",
                                  paste0(file_name, ".png")), 
         width = 1, height = 0.2, type = "cairo", bg = "transparent", dpi = 300)
  
  output <- tibble(spark = md_img, summary = inline_summary)
  return(output)
}

numeric_summary <- function(x, variable) {
  inline_summary <- paste0("Median: ", round(median(x, na.rm = TRUE), 2),
                           " | Mean: ", round(mean(x, na.rm = TRUE), 2), 
                           " | Std. Dev.: ", round(sd(x, na.rm = TRUE), 2))
  
  fig_hist <- ggplot(as.data.frame(x), aes(x = x)) +
    geom_histogram(fill = "grey50", binwidth = 10) +
    theme_spark()
  
  file_name <- gsub("\\.| ", "_", tolower(variable))
  md_img <- paste0("![](output/figures/summary-table/", file_name, ")")
  
  ggsave(fig_hist, filename = here("analysis", "output", "figures", "summary-table",
                                   paste0(file_name, ".pdf")), 
         width = 1, height = 0.2, device = cairo_pdf)
  ggsave(fig_hist, filename = here("analysis", "output", "figures", "summary-table",
                                   paste0(file_name, ".png")), 
         width = 1, height = 0.2, type = "cairo", bg = "transparent", dpi = 300)
  
  output <- tibble(spark = md_img, summary = inline_summary)
  return(output)
}

#' @rdname summary_table
#' 
#' @param x a one-column data frame
#' @param variable name of the variable to summarize (generally the column name of x)
#' @param df the data frame that x comes from
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' set.seed(1234)
#' example_data <- tibble(numeric_thing = 1:100,
#'                        factor_thing = factor(sample(LETTERS[1:4], 100, replace = TRUE)))
#' 
#' # Single rows
#' md_summary_row(example_data[[1]], "numeric_thing", example_data)
#' #> # A tibble: 1 x 2
#' #>   spark                                           summary                                     
#' #>   <chr>                                           <chr>                                       
#' #> 1 ![](output/figures/summary-table/numeric_thing) Median: 50.5 | Mean: 50.5…
#' 
#' # Make a summary for all rows
#' example_data %>% 
#'   gather(variable, value) %>% 
#'   group_by(variable) %>% 
#'   nest() %>% 
#'   mutate(summary = map2(.x = data, .y = variable, 
#'                         ~ md_summary_row(.x$value, .y, example_data))) %>% 
#'   select(-data) %>% 
#'   unnest(summary)
#' #> # A tibble: 2 x 3
#' #>   variable      spark                                   summary             
#' #>   <chr>         <chr>                                   <chr>               
#' #> 1 numeric_thing ![](output/figures/summary-table/numer… Median: 50.5 | Mean…
#' #> 2 factor_thing  ![](output/figures/summary-table/facto… A (31; 31.0%) | B (…
#' }
md_summary_row <- function(x, variable, df) {
  x <- my_as_numeric(x)
  
  if (is.numeric(x)) {
    numeric_summary(x, variable)
  } else {
    level_summary(x, variable, df)
  }
}
