#' pop_prop_stan
#' 
#' Compare the proportion of a characteristic in a sample with a population-level proportion.
#' 
#' @param x Number of observations in sample with characteristic
#' @param n_total Number of observations in sample
#' @param pop_prop Population proportion to compare with (x / n_total)
#' @param ... Arguments passed to `rstan::sampling` (e.g. iter, chains).
#' 
#' @export
#' 
#' @return An object of class `stanfit` returned by `rstan::sampling`
#'
pop_prop_stan <- function(x, n_total, pop_prop, ...) {
  standata <- list(x = x, n_total = n_total, pop_prop = pop_prop)
  out <- rstan::sampling(stanmodels$compare_pop_prop, data = standata, ...)
  return(out)
}
