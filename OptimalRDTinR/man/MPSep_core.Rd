% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MPSep_core.R
\name{MPSep_core}
\alias{MPSep_core}
\title{Probability Core for Multi-State RDT with Multiple Periods and Criteria for Separate Periods}
\usage{
MPSep_core(n, cvec, pivec)
}
\arguments{
\item{n}{RDT sample size}

\item{cvec}{Maximum allowable failures for each separate period}

\item{pivec}{Failure probability for each seperate period}
}
\value{
Core probability of passing the test given specific failure probabilities
}
\description{
Define the summed core function inside of the integration which gets the probability of passing the test given specific failure probabilities.
The maximum allowable failures for each separate period need to be satisfied to pass the test (for Multi-state RDT, Multiple Periods, Scenario II).
}
\examples{
#Example for two periods
pi <- pi_MCSim_dirichlet(M = 5000, seed = 10, par = c(1, 1, 1))
MPSep_core(n = 10, cvec = c(1, 1), pivec = pi[1, ]);
#The function also works for more than two periods, however, may increase the computation cost.
pi <- pi_MCSim_dirichlet(M = 5000, seed = 10, par = c(1, 1, 1, 1))
MPSep_core(n = 10, cvec = c(1, 1, 1), pivec = pi[1, ]);
}
