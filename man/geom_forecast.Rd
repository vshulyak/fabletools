% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ggplot_geom.R, R/ggplot_stat.R
\docType{data}
\name{GeomForecast}
\alias{GeomForecast}
\alias{geom_forecast}
\alias{StatForecast}
\title{Forecast plot}
\format{An object of class \code{GeomForecast} (inherits from \code{Geom}, \code{ggproto}, \code{gg}) of length 7.}
\usage{
GeomForecast

geom_forecast(
  mapping = NULL,
  data = NULL,
  stat = "forecast",
  position = "identity",
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE,
  level = c(80, 95),
  h = NULL,
  model = fable::ETS(y),
  fc_args = list(),
  ...
)

StatForecast
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}} or
\code{\link[ggplot2:aes_]{aes_()}}. If specified and \code{inherit.aes = TRUE} (the
default), it is combined with the default mapping at the top level of the
plot. You must supply \code{mapping} if there is no plot mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{stat}{Use to override the default connection between
\code{geom_smooth()} and \code{stat_smooth()}.}

\item{position}{Position adjustment, either as a string, or the result of
a call to a position adjustment function.}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}

\item{level}{A vector of numbers between 0 and 100 which define the confidence
range to be plotted. If \code{NULL}, confidence intervals will not be plotted,
giving only the forecast line.}

\item{h}{The forecast horison (can be used instead of \code{new_data} for regular
time series with no exogenous regressors).}

\item{model}{The time-series model used to produce the forecast. The data
must be \code{y} (indicating aesthetic \code{y}), and the time index for \code{y} is determined from the
\code{x} aesthetic.}

\item{fc_args}{A list of arguments to be used in the \code{\link{forecast}} function}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer()}}. These are
often aesthetics, used to set an aesthetic to a fixed value, like
\code{colour = "red"} or \code{size = 3}. They may also be parameters
to the paired geom/stat.}
}
\value{
A layer for a ggplot graph.
}
\description{
Generates forecasts from the given model and adds them to the plot.
}
\details{
The aesthetics required for the forecasting to work includes forecast
observations on the y axis, and the \code{time} of the observations on the x
axis. Refer to the examples below. To automatically set up aesthetics, use
\code{autoplot}.
}
\examples{

\dontrun{
library(ggplot2)
library(tsibble)
as_tsibble(cbind(mdeaths, fdeaths)) \%>\%
 autoplot() + 
 geom_forecast()
}

}
\seealso{
\code{\link{forecast}}, \code{\link[ggplot2]{ggproto}}
}
\author{
Mitchell O'Hara-Wild
}
\keyword{datasets}
