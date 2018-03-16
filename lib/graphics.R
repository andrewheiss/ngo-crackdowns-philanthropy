# Color palette from ColorBrewer, diverging spectral, 5 categories
# http://colorbrewer2.org/#type=diverging&scheme=Spectral&n=3
#
# library(RColorBrewer)
# RColorBrewer::brewer.pal(5, "Spectral")
ngo_red <- "#D7191C"
ngo_orange <- "#FDAE61"
ngo_yellow <- "#FFFFBF"
ngo_green <- "#ABDDA4"
ngo_blue <- "#2B83BA"

favorability_cols_5 <- data_frame(value = c("Very unfavorable", "Unfavorable", "Neutral", 
                                            "Favorable", "Very favorable"),
                                  color = c(ngo_red, ngo_orange, ngo_yellow,
                                            ngo_green, ngo_blue))

theme_ngos <- function(base_size = 11, base_family = "Encode Sans Condensed", density = FALSE) {
  update_geom_defaults("label", list(family = "Encode Sans Condensed Medium"))
  update_geom_defaults("text", list(family = "Encode Sans Condensed Medium"))
  
  ret <- theme_bw(base_size, base_family) +
    theme(plot.title = element_text(size = rel(1.4), face = "plain",
                                    family = "Encode Sans Condensed SemiBold"),
          plot.subtitle = element_text(size = rel(1), face = "plain",
                                       family = "Encode Sans Condensed Light"),
          plot.caption = element_text(size = rel(0.8), color = "grey50", face = "plain",
                                      family = "Encode Sans Condensed Light"),
          strip.text = element_text(size = rel(1), face = "plain",
                                    family = "Encode Sans Condensed SemiBold"),
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
