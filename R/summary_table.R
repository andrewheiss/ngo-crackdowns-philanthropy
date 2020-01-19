#' Generate a summary table with sparkgraphs
#' 
#' Create a fancy summary Markdown table for numeric and factor variables with tiny ggplot sparkgraphs
#' 
#' @name summary_table
NULL

level_summary <- function(value, variable_name) {
  factor_summary <- tibble(value) %>% 
    count(value) %>%
    mutate(pct = n / sum(n),
           fancy = paste0(value, " (", n, "; ", percent(pct), ")"))
  
  inline_summary <- factor_summary %>% arrange(value) %>% 
    pull(fancy) %>% paste(collapse = " | ")
  
  fig_bar <- ggplot(factor_summary, aes(x = value, y = n)) +
    geom_bar(stat = "identity", fill = "grey50") +
    theme_spark()
  
  file_name <- gsub("\\.| ", "_", tolower(variable_name))
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

numeric_summary <- function(value, variable_name) {
  inline_summary <- paste0("Median: ", round(median(value, na.rm = TRUE), 2),
                           " | Mean: ", round(mean(value, na.rm = TRUE), 2), 
                           " | Std. Dev.: ", round(sd(value, na.rm = TRUE), 2))
  
  fig_hist <- ggplot(tibble(value), aes(x = value)) +
    geom_histogram(fill = "grey50", binwidth = 10) +
    theme_spark()
  
  file_name <- gsub("\\.| ", "_", tolower(variable_name))
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
#' @param value a numeric or factor vector
#' @param variable_name name of the variable to summarize (generally the column name of value)
#' 
#' @export
#' 
#' @examples 
#' \dontrun{
#' set.seed(1234)
#' example_data <- tibble(numeric_thing = 1:100,
#'                        factor_thing = factor(sample(LETTERS[1:4], 100, 
#'                                                     replace = TRUE)))
#' 
#' # Single rows
#' md_summary_row(example_data[[1]], "numeric_thing")
#' #> # A tibble: 1 x 2
#' #>   spark                                           summary
#' #>   <chr>                                           <chr>
#' #> 1 ![](output/figures/summary-table/numeric_thing) Median: 50.5 | Mean: 50.5…
#' 
#' # Make a summary for all rows
#' example_data %>% 
#'   summarise_all(~list(.)) %>% # Collapse each column into a nested cell
#'   pivot_longer(everything(), names_to = "variable_name", values_to = "value") %>% 
#'   mutate(summary = map2(.x = value, .y = variable_name, 
#'                         ~ md_summary_row(.x, .y))) %>% 
#'   select(-value) %>% 
#'   unnest(summary)
#' #> # A tibble: 2 x 3
#' #>   variable      spark                                   summary
#' #>   <chr>         <chr>                                   <chr>
#' #> 1 numeric_thing ![](output/figures/summary-table/numer… Median: 50.5 | Mean…
#' #> 2 factor_thing  ![](output/figures/summary-table/facto… A (19; 19.0%) | B (…
#' }
md_summary_row <- function(value, variable_name) {
  if (is.numeric(value)) {
    numeric_summary(value, variable_name)
  } else if (is.factor(value)) {
    level_summary(value, variable_name)
  } else {
    "This isn't numeric or a factor."
  }
}
