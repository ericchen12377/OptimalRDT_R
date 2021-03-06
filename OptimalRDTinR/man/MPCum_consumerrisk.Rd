% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MPCum_consumerrisk.R
\name{MPCum_consumerrisk}
\alias{MPCum_consumerrisk}
\title{Consumer's Risk for Multi-State RDT with Multiple Periods and Criteria for Cumulative Periods}
\usage{
MPCum_consumerrisk(n, cvec, pivec, Rvec)
}
\arguments{
\item{n}{RDT sample size}

\item{cvec}{Maximum allowable failures for each separate period}

\item{pivec}{Failure probability for each seperate period}

\item{Rvec}{Lower level reliability requirements for each cumulative period from the begining of the test.}
}
\value{
Probability for consumer's risk
}
\description{
Define the consumer risk function which gets the probability of passing the test when the lower level reliability requirements are not satisfied for any cumulative periods.
The maximum allowable failures for each cumulative period need to be satisfied to pass the test (for Multi-state RDT, Multiple Periods, Scenario I)
}
\examples{
pi <- pi_MCSim_dirichlet(M = 5000, seed = 10, par = c(1, 1, 1))
MPCum_consumerrisk(n = 10, cvec = c(1, 1), pivec = pi, Rvec = c(0.8, 0.7))
}
