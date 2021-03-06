% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DAISIE_rates.R
\name{get_ext_rate}
\alias{get_ext_rate}
\title{Function to describe changes in extinction rate through time. From
Valente et al 2014 ProcB}
\usage{
get_ext_rate(
  timeval,
  mu,
  ext_pars,
  hyper_pars,
  area_pars,
  island_ontogeny,
  sea_level = 0,
  extcutoff = 1000,
  num_spec,
  K,
  trait_pars = NULL,
  island_spec = NULL
)
}
\arguments{
\item{timeval}{current time of simulation}

\item{mu}{extinction rate}

\item{ext_pars}{a numeric vector:
\itemize{
  \item{[1]: minimum extinction when area is at peak}
  \item{[2]: extinction rate when current area is 0.10 of maximum area}
}}

\item{hyper_pars}{A numeric vector for hyperparameters for the rate
calculations:
\itemize{
\item{[1]: is d_0 the scaling parameter for exponent for calculating
cladogenesis rate}
\item{[2]: is x the exponent for calculating extinction rate}
\item{[3]: is alpha, the exponent for calculating the immigration rate}
\item{[4]: is beta the exponent for calculating the anagenesis rate.}
}}

\item{area_pars}{a named list containing area and sea level parameters as
created by \code{\link{create_area_pars}}:
\itemize{
  \item{[1]: maximum area}
  \item{[2]: value from 0 to 1 indicating where in the island's history the
  peak area is achieved}
  \item{[3]: sharpness of peak}
  \item{[4]: total island age}
  \item{[5]: amplitude of area fluctuation from sea level}
  \item{[6]: frequency of sine wave of area change from sea level}
}}

\item{island_ontogeny}{a string describing the type of island ontogeny.
Can be \code{NULL},
\code{"beta"} for a beta function describing area through time.}

\item{sea_level}{a numeric describing sea level can be \code{NULL}}

\item{extcutoff}{cutoff for extinction rate preventing it from being too
large and slowing down simulation. Default is 1100}

\item{num_spec}{a numeric with the current number of species}

\item{K}{carrying capacity}

\item{trait_pars}{A named list containing diversification rates considering 
two trait states created by \code{\link{create_trait_pars}}:
\itemize{
  \item{[1]:A numeric with the per capita transition rate with state1}
  \item{[2]:A numeric with the per capita immigration rate with state2}
  \item{[3]:A numeric with the per capita extinction rate with state2}
  \item{[4]:A numeric with the per capita anagenesis rate with state2}
  \item{[5]:A numeric with the per capita cladogenesis rate with state2}
  \item{[6]:A numeric with the per capita transition rate with state2} 
  \item{[7]:A numeric with the number of species with trait state 2 on mainland} 
}}

\item{island_spec}{Matrix with current state of simulation containing number
of species.}
}
\description{
Function to describe changes in extinction rate through time. From
Valente et al 2014 ProcB
}
\references{
Valente, Luis M., Rampal S. Etienne, and Albert B. Phillimore.
"The effects of island ontogeny on species diversity and phylogeny."
Proceedings of the Royal Society of London B: Biological Sciences 281.1784
(2014): 20133227.
}
\seealso{
Other rate calculations: 
\code{\link{DAISIE_plot_area}()},
\code{\link{get_ana_rate}()},
\code{\link{get_immig_rate}()},
\code{\link{island_area_vector}()},
\code{\link{island_area}()},
\code{\link{update_max_rates}()},
\code{\link{update_rates}()}
}
\author{
Pedro Neves, Joshua Lambert
}
\concept{rate calculations}
