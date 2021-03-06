% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/DAISIE_sumstats_rates.R
\name{DAISIE_calc_sumstats_pcrates}
\alias{DAISIE_calc_sumstats_pcrates}
\title{Calculate summary statistics of per capita rates}
\usage{
DAISIE_calc_sumstats_pcrates(
  pars,
  ext_pars,
  totaltime,
  area_pars = NULL,
  hyper_pars = NULL,
  dist_pars = NULL,
  island_ontogeny = 1,
  sea_level = 0,
  extcutoff = 100,
  mainland_n = 1000,
  resol = 100
)
}
\arguments{
\item{pars}{A numeric vector:
\itemize{
  \item{[1]: cladogenesis rate}
  \item{[2]: extinction rate}
  \item{[3]: carrying capacity}
  \item{[4]: immigration rate}
  \item{[5]: anagenesis rate}
}}

\item{ext_pars}{A numeric vector:
\itemize{
  \item{[1]: minimum extinction when area is at peak}
  \item{[2]: extinction rate when current area is 0.10 of maximum area}
}}

\item{totaltime}{A numeric indicating total time of simulation.}

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

\item{hyper_pars}{A numeric vector for hyperparameters for the rate
calculations:
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

\item{island_ontogeny}{a numeric describing the type of island ontogeny.
Can be \code{0} for constant, \code{1} for a beta function describing area.}

\item{sea_level}{a numeric describing sea level.
0 corresponds to no sea level dynamics.}

\item{extcutoff}{A numeric with the cutoff for extinction rate
preventing it from being too
large and slowing down simulation. Should be big. Default is 1100.}

\item{mainland_n}{A numeric stating the number of mainland species, that
is the number of species that can potentially colonize the island.
If DAISIE_sim function uses a clade-specific diversity dependence,
this value is set to 1.
If DAISIE_sim function uses an island-wide diversity dependence,
this value is set to the number of mainland species. Default is 1000}

\item{resol}{A numeric > 0 indicating number of decimals per unit time.}
}
\value{
A named list with mean and median values of specified parameters
}
\description{
Calculates the summary statistics of per capita rates throught an ontogeny
simulation
}
\examples{
pars <- c(0.01, 1, 20, 0.01, 1)
ext_pars <- c(0.2, 10)
area_pars <- create_area_pars(
  max_area = 13500,
  proportional_peak_t = 0.1,
  peak_sharpness = 1,
  total_island_age = 15,
  sea_level_amplitude = 0,
  sea_level_frequency = 0,
  island_gradient_angle = 0
)
hyper_pars <- NULL
dist_pars <- create_dist_pars(1)
island_ontogeny <- 1
sea_level <- 0
extcutoff <- 1100
resol <- 100
totaltime <- 10
mainland_n <- 1000

mean_med <- DAISIE_calc_sumstats_pcrates(
  pars = pars,
  ext_pars = ext_pars,
  totaltime = totaltime,
  area_pars = area_pars,
  hyper_pars = hyper_pars,
  dist_pars = dist_pars,
  island_ontogeny = island_ontogeny,
  sea_level = sea_level,
  extcutoff = extcutoff,
  mainland_n = mainland_n,
  resol = resol
)
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
Pedro Neves
}
