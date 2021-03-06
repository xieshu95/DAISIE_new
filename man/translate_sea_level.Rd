% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DAISIE_utils.R
\name{translate_sea_level}
\alias{translate_sea_level}
\title{Translate user-friendly sea-level codes to numerics}
\usage{
translate_sea_level(sea_level)
}
\arguments{
\item{sea_level}{In \code{\link{DAISIE_sim_time_dependent}} and plotting a
string describing the type of sea level. Can be \code{"const"} or
\code{"sine"} for a sine function describing area through time. String
checked by \code{\link{is_sea_level_input}}.
\cr In all other functions a numeric describing the type of sea level. Can
be \code{0} for constant, \code{1} for a sine function describing area
through time.}
}
\value{
Numeric, 0 for null-sea-level, 1 for sine function
}
\description{
This function simulates islands with given cladogenesis,
extinction, Kprime, immigration and anagenesis parameters. If a single
parameter set is provided (5 parameters) it simulates islands where all
species have the same macro-evolutionary process. If two paramater sets
(10 parameters) are provided, it simulates islands where two different
macro-evolutionary processes operate, one applying to type 1 species and
other to type 2 species. If two parameter sets and a time shift (11
parameters) are provided, it simulates islands where at the given time
a shift between the parameter sets will occur.

Returns R list object that contains the simulated islands
}
\examples{
tanslated_sea_level <- translate_sea_level("const")
}
\references{
Valente, L.M., A.B. Phillimore and R.S. Etienne (2015).
Equilibrium and non-equilibrium dynamics simultaneously operate in the
Galapagos islands. Ecology Letters 18: 844-852.
Hauffe, T., D. Delicado, R.S. Etienne and L. Valente (submitted).
Lake expansion increases equilibrium diversity via the target effect of
island biogeography.
}
\seealso{
\code{\link{DAISIE_format_CS}} \code{\link{DAISIE_plot_sims}}
}
\author{
Luis Valente and Albert Phillimore
}
