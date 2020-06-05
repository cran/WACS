#'
#' WACS: Multivariate Weather-state Approach Conditionally Skew-normal Generator
#'
#' WACS is a multivariate weather generator for daily climate variables based
#' on weather-states that uses a Markov chain for modeling the succession of 
#' weather states. Conditionally to the weather states,
#' the multivariate variables are modeled using the family of
#' Complete Skew-Normal distributions. Parameters are estimated on measured series. 
#' Must include a 'Rain' variable and can accept as many other variables as desired. 
#' 
#' @section WACS functions:
#'  \itemize{
#'   \item{WACSdata: }{Builds a data structure compatible with WACS functions}
#'   \item{WACSestim: }{Estimation of the parameters of a WACS model}
#'   \item{WACSsimul: }{Performs simulations based on estimated parameters of the WACS model}
#'   \item{WACSvalid: }{Performs validations of WACS simulations}
#'   \item{WACScompare: }{Performs comparisons between two WACS data structures, or between two WACS simulation series}
#'   \item{WACSplot: }{Plots validation figures from WACSvalid and from WACScompare}
#'   \item{WACSplotdensity: }{Plots fitted bivariate densities of residuals}
#' }
#' 
#' @section Authors:
#' Denis Allard, Ronan Trépos
#' 
#' @section Reference:
#' \itemize{
#'   \item{} {Flecher C., Naveau P., Allard D., Brisson N.(2010) 
#'   A stochastic weather generator for skewed data. Water Resource Research, 46, W07519}
#'   \item{} {WACSgen: model, methods and algorithms (2015). Allard D.,
#'   Biostatistiques et Processus Spatiaux, INRA, Avignon, France. Available at denis.biosp.org}
#'   \item{} Flecher, C., Naveau, Ph. and Allard, D. (2009) Estimating the Closed Skew-Normal 
#'   distributions parameters using weighted moments",  Statistics and Probability Letters, 79, 1977-1984.  
#' }
#' 
#' @examples
#' \dontrun{ 
#'   data(ClimateSeries)
#'   ThisData = WACSdata(ClimateSeries, from="1995-01-01", to="2012-12-31")
#'   ThisPar  = WACSestim(ThisData)
#'   ThisSim  = WACSsimul(ThisPar, from="1995-01-01", to="2012-12-31")
#'   ThisVal  = WACSvalid(what="Sim",wacsdata = ThisData, wacspar = ThisPar, 
#'                        wacssimul = ThisSim,varname="tmin")
#'   WACSplot(ThisVal,file="ThisFile.pdf")
#' }
#' 
#' @docType package
#' @name WACS
#' 
#' 
#' 
#' 
NULL
