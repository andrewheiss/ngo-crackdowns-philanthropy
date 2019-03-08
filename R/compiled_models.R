#' Stan models
#' 
#' Precompiled Stan models ready to be used with `rstan::sampling`
#' 
#' Instead of writing wrapper functions for these two models, we just provide them as precompiled models that we can then use on their own
#' 
#' @name compiled_models
#' @md
NULL

#' @rdname compiled_models
#'
#' @export
# This has to be wrapped in a function for some reason; just doing
# stanmodels$donate_likely breaks and idk why
donate_likely <- function() {
  return(stanmodels$donate_likely)
}

#' @rdname compiled_models
#'
#' @export
amount_donated_best <- function() {
  return(stanmodels$amount_donated_best)
}
