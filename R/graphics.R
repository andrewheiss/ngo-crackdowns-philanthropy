# Colors ------------------------------------------------------------------

# How to create custom palettes:
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2
#
# Color palette adapted from ColorBrewer, diverging spectral, 5 categories
# http://colorbrewer2.org/#type=diverging&scheme=Spectral&n=5
#
# library(RColorBrewer)
# RColorBrewer::brewer.pal(5, "Spectral")

#' Hex codes for colors used in project
#' 
#' @export
ngo_colors <- c(
  `red`         = "#D7191C",
  `orange`      = "#FDAE61",
  `yellow`      = "#FFFFBF",
  `green`       = "#ABDDA4",
  `blue`        = "#2B83BA",
  `light grey`  = "grey80",
  `dark grey`   = "grey10"
)

#' Function to extract NGO colors as hex codes
#'
#' @param ... Character names of ngo_colors 
#'
#' @export
ngo_cols <- function(..., name = TRUE) {
  cols <- c(...)
  
  if (is.null(cols)) {
    return(ngo_colors)
  }
  
  if (name) {
    ngo_colors[cols]
  } else {
    unname(ngo_colors[cols])
  }
}

#' Palette definitions
#'
#' @export
ngo_palettes <- list(
  `main`    = ngo_cols("green", "blue", "red", "orange", "yellow"),
  `ordered` = ngo_cols("red", "orange", "yellow", "green", "blue"),
  `cool`    = ngo_cols("blue", "green", "yellow"),
  `hot`     = ngo_cols("red", "orange", "yellow"),
  `grey`    = ngo_cols("light grey", "dark grey")
)

#' Return function to interpolate a NGO color palette
#'
#' @param palette Character name of palette in ngo_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
ngo_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- ngo_palettes[[palette]]
  
  if (reverse) pal <- rev(pal)
  
  colorRampPalette(pal, ...)
}

#' Color scale constructor for NGO colors
#'
#' @param palette Character name of palette in ngo_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_color_ngo <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- ngo_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("colour", paste0("ngo_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}

#' Fill scale constructor for NGO colors
#'
#' @param palette Character name of palette in ngo_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is TRUE or FALSE
#'
#' @export
scale_fill_ngo <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- ngo_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("ngo_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}


# ggplot themes -----------------------------------------------------------

#' theme_spark
#' 
#' A custom ggplot2 theme used for tiny sparkline-like graphs
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#'
#' ggplot(mtcars, aes(x = mpg)) +
#'   geom_histogram(fill = "grey80", binwidth = 5) +
#'   theme_spark()
theme_spark <- function() {
  theme(line = element_blank(), rect = element_blank(), text = element_blank(), 
        panel.border = element_blank(),
        panel.background = element_rect(fill = "transparent", color = NA),
        plot.background = element_rect(fill = "transparent", color = NA),
        plot.margin = unit(c(0, 0, -0.25, -0.25), "lines"))
}

#' theme_ngos
#' 
#' A custom ggplot2 theme used throughout this project
#'
#' @param base_size base font size
#' @param base_family base font family (default is Roboto Condensed)
#' @param density Binary indicator to remove the panel grid and make a few other adjustments
#'
#' @export
#'
#' @examples
#' library(ggplot2)
#' 
#' # Standard theme
#' ggplot(mtcars, aes(x = mpg, y = wt)) +
#'   geom_point() +
#'   theme_ngos()
#' 
#' # using density = TRUE
#' ggplot(mtcars, aes(x = mpg)) +
#'   geom_density(fill = "grey80") +
#'   theme_ngos(density = TRUE)
theme_ngos <- function(base_size = 11, base_family = "Roboto Condensed", density = FALSE) {
  update_geom_defaults("label", list(family = "Roboto Condensed", face = "plain"))
  update_geom_defaults("text", list(family = "Roboto Condensed", face = "plain"))
  
  ret <- theme_bw(base_size, base_family) +
    theme(plot.title = element_text(size = rel(1.4), face = "plain",
                                    family = "Roboto Condensed"),
          plot.subtitle = element_text(size = rel(1), face = "plain",
                                       family = "Roboto Condensed"),
          plot.caption = element_text(size = rel(0.8), color = "grey50", face = "plain",
                                      family = "Roboto Condensed",
                                      margin = margin(t = 10)),
          plot.tag = element_text(size = rel(1), face = "plain", color = "grey50",
                                  family = "Roboto Condensed"),
          strip.text = element_text(size = rel(0.8), face = "plain",
                                    family = "Roboto Condensed"),
          strip.text.x = element_text(margin = margin(t = 1, b = 1)),
          panel.border = element_blank(), 
          strip.background = element_rect(fill = "#ffffff", colour = NA),
          axis.ticks = element_blank(),
          axis.title.x = element_text(margin = margin(t = 5), size = rel(0.8)),
          legend.margin = margin(t = 0),
          legend.title = element_text(size = rel(0.8)),
          legend.position = "bottom")
  
  if (density) {
    ret <- ret +
      theme(panel.grid = element_blank(),
            axis.title.y = element_blank(),
            axis.text.y = element_blank(),
            strip.text = element_text(margin = margin(5, 0, 2, 0, "pt")))
  } else {
    ret
  }
}

#' theme_ngos_table
#' 
#' A custom ggplot2 theme used for `tableGrob` objects`
#'
#' @export
#' @md
#'
#' @examples
#' library(grid)
#' d <- head(iris, 3)
#' g <- tableGrob(d, rows = NULL, theme = theme_ngos_table)
#' grid.newpage()
#' grid.draw(g)
theme_ngos_table <- gridExtra::ttheme_minimal(
  core = 
    list(fg_params = 
           list(hjust = 0, x = 0.1,
                fontsize = 7, fontface = "plain",
                fontfamily = "Roboto Condensed"),
         bg_params = list(fill = "white")),
  colhead = 
    list(fg_params = 
           list(hjust = 0, x = 0.1, col = "white",
                fontsize = 7, fontface = "bold",
                fontfamily = "Roboto Condensed"),
         bg_params = list(fill = ngo_cols("blue"))),
  padding = grid::unit(c(4, 2), "mm"))


# Conversion and formatting help ------------------------------------------

#' Convert mms to pts
#' 
#' Convert units specified in millimeters to typographic points. This is especially helpful when working with ggplot geoms that use size parameters
#'
#' @param x a numeric value (in millimeters)
#'
#' @return A numeric value (in points)
#' @export
#'
#' @examples
#' library(ggplot2)
#' 
#' ggplot(mtcars, aes(x = mpg, y = wt)) +
#'   geom_point() +
#'   annotate(geom = "text", x = 20, y = 4, 
#'            label = "Here's a label", size = pts(11))
pts <- function(x) {
  as.numeric(grid::convertUnit(grid::unit(x, "pt"), "mm"))
}

#' Format seconds nicely
#' 
#' Convert a given number of seconds into "HH:MM" format
#'
#' @param x a numeric value (in seconds)
#'
#' @return A string value (in HH:MM format)
#' @export
#'
#' @examples
#' fmt_seconds(5)
#' #> "00:05"
#' 
#' fmt_seconds(500)
#' #> "08:20"
fmt_seconds <- function(x) {
  n_seconds <- lubridate::seconds_to_period(x)
  sprintf("%02.0f:%02.0f", lubridate::minute(n_seconds), lubridate::second(n_seconds))
}
