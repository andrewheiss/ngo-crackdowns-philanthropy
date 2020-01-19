#' amount_donated_best
#'
#' Stan implementation of John Kruschke's Bayesian Estimation Supersedes the
#' t-test (BEST).
#'
#' @param df Data frame with two columns: amount (numeric) and group (factor)
#' @param ... Arguments passed to `rstan::sampling` (e.g. iter, chains).
#'
#' @export
#'
#' @return An object of class `stanfit` returned by `rstan::sampling`
#'   
amount_donated_best <- function(df, ...) {
  standata <- tidybayes::compose_data(df)
  
  out <- rstan::sampling(stanmodels$amount_donated_best, data = standata, ...)
  return(out)
}
