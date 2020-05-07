#' Rejection Probability for Binomial RDT
#'
#' Define the rejection probability function which gets the probability of rejecting the test (for binomial RDT).
#'
#' @param n RDT sample size.
#' @param c Maximum allowable failures.
#' @param pi Failure probability.
#' @return Rejection probability
#' @examples
#' pi <- pi_MCSim_beta(M = 5000, seed = 10, a = 1, b = 1)
#' brejectprob(n = 10, c = 2, pi = pi);
#' 0.7229733


brejectprob <- function(n, c, pi){
  return(mean(1 - pbinom(c, n, pi)))
}
