% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_pars.R
\name{are_dist_pars}
\alias{are_dist_pars}
\title{Create list of distance parameters}
\usage{
are_dist_pars(dist_pars)
}
\arguments{
\item{dist_pars}{A named list of a numeric distance from the mainland as
created by \code{\link{create_dist_pars}}:
\itemize{
\item{[1]: is D distance from the mainland}
}}
}
\value{
\code{TRUE} if list contains distance parameters,
\code{FALSE} otherwise.
}
\description{
Create list of distance parameters
}
\examples{
testit::assert(are_dist_pars(create_dist_pars(D = 2500)))
}
\author{
Pedro Neves, Joshua Lambert
}
