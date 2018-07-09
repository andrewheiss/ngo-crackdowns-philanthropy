# ggplot themes -----------------------------------------------------------

theme_spark <- function() {
  theme(line = element_blank(), rect = element_blank(), text = element_blank(), 
        panel.border = element_blank(),
        panel.background = element_rect(fill = "transparent", color = NA),
        plot.background = element_rect(fill = "transparent", color = NA),
        plot.margin = unit(c(0, 0, -0.25, -0.25), "lines"))
}

theme_ngos <- function(base_size = 11, base_family = "Encode Sans Condensed", density = FALSE) {
  update_geom_defaults("label", list(family = "Encode Sans Condensed Medium"))
  update_geom_defaults("text", list(family = "Encode Sans Condensed Medium"))
  
  ret <- theme_bw(base_size, base_family) +
    theme(plot.title = element_text(size = rel(1.4), face = "plain",
                                    family = "Encode Sans Condensed SemiBold"),
          plot.subtitle = element_text(size = rel(1), face = "plain",
                                       family = "Encode Sans Condensed Light"),
          plot.caption = element_text(size = rel(0.8), color = "grey50", face = "plain",
                                      family = "Encode Sans Condensed Light",
                                      margin = margin(t = 10)),
          plot.tag = element_text(size = rel(1), face = "plain", color = "grey50",
                                  family = "Encode Sans Condensed SemiBold"),
          strip.text = element_text(size = rel(0.8), face = "plain",
                                    family = "Encode Sans Condensed Medium"),
          strip.text.x = element_text(margin = margin(t = 1, b = 1)),
          panel.border = element_blank(), 
          strip.background = element_rect(fill = "#ffffff", colour = NA),
          axis.ticks = element_blank(),
          axis.title.x = element_text(margin = margin(t = 10)),
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


# Colors ------------------------------------------------------------------

# How to create custom palettes:
# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2
#
# Color palette adapted from ColorBrewer, diverging spectral, 5 categories
# http://colorbrewer2.org/#type=diverging&scheme=Spectral&n=5
#
# library(RColorBrewer)
# RColorBrewer::brewer.pal(5, "Spectral")

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

# Palette definitions
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
scale_fill_ngo <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- ngo_pal(palette = palette, reverse = reverse)
  
  if (discrete) {
    discrete_scale("fill", paste0("ngo_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}
