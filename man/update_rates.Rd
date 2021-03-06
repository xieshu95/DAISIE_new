% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DAISIE_rates.R
\name{update_rates}
\alias{update_rates}
\title{Calculates algorithm rates}
\usage{
update_rates(
  timeval,
  totaltime,
  gam,
  laa,
  lac,
  mu,
  hyper_pars = hyper_pars,
  area_pars = NULL,
  dist_pars = NULL,
  ext_pars = NULL,
  island_ontogeny = NULL,
  sea_level = NULL,
  extcutoff,
  K,
  num_spec,
  num_immigrants,
  mainland_n,
  trait_pars = NULL,
  island_spec = NULL
)
}
\arguments{
\item{timeval}{A numeric with the current time of simulation}

\item{totaltime}{A numeric with the total time of simulation}

\item{gam}{A numeric with the per capita immigration rate}

\item{laa}{A numeric with the per capita anagenesis rate}

\item{lac}{A numeric with the per capita cladogenesis rate}

\item{mu}{extinction rate}

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

\item{dist_pars}{a numeric for the distance from the mainland.}

\item{ext_pars}{A numeric vector:
\itemize{
  \item{[1]: minimum extinction when area is at peak}
  \item{[2]: extinction rate when current area is 0.10 of maximum area}
}}

\item{island_ontogeny}{A string describing the type of island ontogeny.
Can be \code{NULL},
\code{"beta"} for a beta function describing area through time.}

\item{sea_level}{a numeric describing the type of sea level.}

\item{extcutoff}{A numeric with the cutoff for extinction rate
preventing it from being too large and slowing down simulation.
Should be big.}

\item{K}{A numeric with K (clade-specific carrying capacity)}

\item{num_spec}{a numeric with the current number of species.}

\item{num_immigrants}{a numeric with the current number of non-endemic
species (a.k.a non-endemic species).}

\item{mainland_n}{A numeirc with the total number of species present
in the mainland}

\item{trait_pars}{A named list containing diversification rates considering two trait states:
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
\value{
a named list with the updated effective rates.
}
\description{
Internal function that updates the all the rates and
max extinction horizon at time t.
}
\seealso{
\code{\link{update_max_rates}}

Other rate calculations: 
\code{\link{DAISIE_plot_area}()},
\code{\link{get_ana_rate}()},
\code{\link{get_ext_rate}()},
\code{\link{get_immig_rate}()},
\code{\link{island_area_vector}()},
\code{\link{island_area}()},
\code{\link{update_max_rates}()}
}
\concept{rate calculations}
