% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_pars.R
\name{create_default_pars}
\alias{create_default_pars}
\title{Creates standard metaparameters to defaults when NULL}
\usage{
create_default_pars(
  island_ontogeny = 0,
  sea_level = 0,
  area_pars = NULL,
  hyper_pars = NULL,
  dist_pars = NULL,
  ext_pars = NULL,
  totaltime,
  pars
)
}
\arguments{
\item{island_ontogeny}{In \code{\link{DAISIE_sim_time_dependent}},
\code{\link{DAISIE_ML_CS}} and plotting a string describing the type of
island ontogeny. Can be \code{"const"}, \code{"beta"} for a beta function
describing area through time. String checked by
\code{\link{is_island_ontogeny_input}}. \cr In all other functions a numeric
describing the type of island ontogeny. Can be \code{0} for constant,
\code{1} for a beta function describing area through time. In ML functions
\code{island_ontogeny = NA} assumes constant ontogeny.}

\item{sea_level}{In \code{\link{DAISIE_sim_time_dependent}} and plotting a
string describing the type of sea level. Can be \code{"const"} or
\code{"sine"} for a sine function describing area through time. String
checked by \code{\link{is_sea_level_input}}.
\cr In all other functions a numeric describing the type of sea level. Can
be \code{0} for constant, \code{1} for a sine function describing area
through time.}

\item{area_pars}{A named list containing area and sea level parameters as
created by \code{\link{create_area_pars}}:
\itemize{
  \item{[1]: maximum area}
  \item{[2]: value from 0 to 1 indicating where in the island's history the
  peak area is achieved}
  \item{[3]: sharpness of peak}
  \item{[4]: total island age}
  \item{[5]: amplitude of area fluctuation from sea level}
  \item{[6]: frequency of sine wave of area change from sea level}
  \item{[7]: angle of the slope of the island}
}}

\item{hyper_pars}{A named list of numeric hyperparameters for the rate
calculations as returned by \code{\link{create_hyper_pars}}:
\itemize{
\item{[1]: is d_0 the scaling parameter for exponent for calculating
cladogenesis rate}
\item{[2]: is x the exponent for calculating extinction rate}
\item{[3]: is alpha, the exponent for calculating the immigration rate}
\item{[4]: is beta the exponent for calculating the anagenesis rate.}
}}

\item{dist_pars}{A named list of a numeric distance from the mainland as
created by \code{\link{create_dist_pars}}:
\itemize{
\item{[1]: is D distance from the mainland}
}}

\item{ext_pars}{A numeric vector:
\itemize{
  \item{[1]: minimum extinction when area is at peak}
  \item{[2]: extinction rate when current area is 0.10 of maximum area}
}}

\item{totaltime}{Numeric defining the length of the simulation in time units.}

\item{pars}{A numeric vector containing the model parameters:
\itemize{
  \item{pars[1]: lambda^c (cladogenesis rate)}
  \item{pars[2]: mu (extinction rate)}
  \item{pars[3]: K (carrying capacity), set K=Inf for diversity
  independence.}
  \item{pars[4]: gamma (immigration rate)}
  \item{pars[5]: lambda^a (anagenesis rate)}
  \item{pars[6]: lambda^c (cladogenesis rate) for either type 2 species
  or rate set 2 in rate shift model}
  \item{pars[7]: mu (extinction rate) for either type 2 species or rate
  set 2 in rate shift model}
  \item{pars[8]: K (carrying capacity) for either type 2 species or rate
  set 2 in rate shift model, set K=Inf for diversity independence.}
  \item{pars[9]: gamma (immigration rate) for either type 2 species or
  rate set 2 in rate shift model}
  \item{pars[10]: lambda^a (anagenesis rate) for either type 2 species
  or rate set 2 in rate shift model}
}
The elements 6:10 are required only when type 2 species are included
or in the rate shift model.}
}
\value{
Named list with standard parameters and metaparameters needed by
\code{DAISIE}.
}
\description{
Creates standard metaparameters to defaults when NULL
}
\examples{
default_pars <- create_default_pars(
  island_ontogeny = 0,
  sea_level = 0,
  area_pars = create_area_pars(
    max_area = 1000,
    proportional_peak_t = 0.1,
    peak_sharpness = 1,
    total_island_age = 10,
    sea_level_amplitude = 1,
    sea_level_frequency = 10,
    island_gradient_angle = 0
  ),
  hyper_pars = create_hyper_pars(
    d_0 = 0,
    x = 0,
    alpha = 0,
    beta = 0
  ),
  dist_pars = create_dist_pars(D = 25000),
  ext_pars = c(5, 10),
  totaltime = 15,
  pars = c(2, 1, 0.05, 0.001, 1)
)

}
\author{
Joshua Lambert, Pedro Neves
}
