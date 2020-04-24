#' Define the simulation function to generate failure probability (for binomial)
#'
#' @param M Simulation sample size
#' @param seed Random seed for random sample
#' @param a Shape parameter 1 for beta distribution
#' @param b Shape parameter 2 for beta distribution
#' @return Vector of failure probability sample
#' @examples
#' pi_MCSim_beta(5000,10,1,1)
#' 0.4925217968 0.5730923335 0.9148640311 ...


pi_MCSim_beta <- function(M,seed,a,b){
  set.seed(seed)
  return(rbeta(M,a,b))
}
