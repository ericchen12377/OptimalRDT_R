#' Probability Core for Binomial RDT
#'
#' Define the summed core function inside of the integration which gets the probability of passing the test given specific failure probabilities (for binomial RDT).
#'
#' @param n RDT sample size.
#' @param c Maximum allowable failures.
#' @param pi Failure probability.
#' @return Core Probability
#' @examples
#' bcore(n = 10, c = 2, pi = 0.2)
#' 0.6777995


bcore <- function(n, c, pi){
  return(sum(dbinom(c(0:c), n, pi)))
}
