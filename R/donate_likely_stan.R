#' donate_likely_stan
#'
#' Model the difference between two proportions. Essentially a Bayesian version
#' of Fisher's exact test.
#'
#' @param n_total_1 Total number in group 1
#' @param n_total_2 Total number in group 2
#' @param n_likely_1 Number of answers responding "Likely" in group 1
#' @param n_likely_2 Number of answers responding "Likely" in group 1
#' @param ... Arguments passed to `rstan::sampling` (e.g. iter, chains).
#'
#' @export
#'
#' @return An object of class `stanfit` returned by `rstan::sampling`
#'   
donate_likely <- function(n_total_1, n_total_2, n_likely_1, n_likely_2, ...) {
  standata <- tidybayes::compose_data(n_total_1, n_total_2, n_likely_1, n_likely_2)

  out <- rstan::sampling(stanmodels$donate_likely, data = standata, ...)
  return(out)
}
