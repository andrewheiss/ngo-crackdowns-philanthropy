#' Factor quantiles
#' 
#' Calculate the quantiles of factor variables.
#' 
#' @param x factor to calculate quantiles for
#' @param probs numeric vector of probabilities
#' 
#' @source Borrowed from Jeffrey Arnold: \url{https://gist.github.com/jrnold/6759254}
#' 
#' @name factor_quantiles
#' 
#' @examples
#' # Normal factors
#' responses <- factor(c("Agree", "Agree", "Agree", "Disagree", "Disagree"))
#' median(responses)
#' quantile(responses, probs = c(0.25, 0.75))
#' 
#' # Ordered factors
#' responses_ordered <- factor(c("Agree", "Agree", "Agree", "Disagree", "Disagree"),
#'                             ordered = TRUE)
#' median(responses_ordered)
#' quantile(responses_ordered, probs = c(0.25, 0.75))
#' 
#' # In the case of ties, the first in order will win.
#' with_ties <- factor(c("A", "A", "B", "B"), ordered = TRUE)
#' median(with_ties)  # "A"
NULL

#' @rdname factor_quantiles
#' @export
quantile.ordered <- function(x, probs = seq(0, 1, 0.25)) {
  tab <- table(x)
  cdf <- cumsum(tab / sum(tab))
  idx <- sapply(probs, function(p) min(which(cdf >= p)))
  levels(x)[idx] 
}

#' @rdname factor_quantiles
#' @export
quantile.factor <- quantile.ordered

#' @rdname factor_quantiles
#' @export
median.ordered <- function(x) quantile(x, 0.5)

#' @rdname factor_quantiles
#' @export
median.factor <- median.ordered
