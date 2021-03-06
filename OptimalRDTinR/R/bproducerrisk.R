#' @title Producer's Risk for Binomial RDT
#'
#' @description Define the producer's risk function which gets the probability of rejecting the test when the lower level reliability requirement can be satisfied (for binomial RDT).
#'
#' @param n RDT sample size.
#' @param c Maximum allowable failures.
#' @param pi Failure probability.
#' @param R Lower level reliability requirement.
#' @return Probability for producer's risk
#' @examples
#' pi <- pi_MCSim_beta(M = 5000, seed = 10, a = 1, b = 1)
#' bproducerrisk(n = 10, c = 2, pi = pi, R = 0.8);
#' @seealso \code{\link{bconsumerrisk}}, \code{\link{bacceptprob}}, \code{\link{brejectprob}}
#' @export
#' @importFrom stats pbinom

bproducerrisk <- function(n, c, pi, R){
  tmp <- 1 - pbinom(c, n, pi)
  sum1 <- t(matrix(tmp)) %*% matrix(sapply(pi, bIndicator, R))
  sum2 <- sum(tmp)
  return(sum1/sum2)
}
