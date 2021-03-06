% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/graphics.R
\name{theme_spark}
\alias{theme_spark}
\title{theme_spark}
\usage{
theme_spark()
}
\description{
A custom ggplot2 theme used for tiny sparkline-like graphs
}
\examples{
library(ggplot2)

ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(fill = "grey80", binwidth = 5) +
  theme_spark()
}
