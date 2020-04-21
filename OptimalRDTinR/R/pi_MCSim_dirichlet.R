#' Define the simulation function to generate failure probability (for multibinomial with dirichlet prior)
#'
#' @param M Simulation sample size
#' @param seed Random seed for random sample
#' @param par Parameters for dirichlet distribution
#' @return Vector of failure probability sample
#' @examples
#' pi_MCSim_dirichlet(1,10,c(1,1,1))
#' 0.5130724 0.3780014 0.1089262


pi_MCSim_dirichlet <- function(M,seed,par){
  require(gtools)
  set.seed(seed)
  return(rdirichlet(M,par))
}
