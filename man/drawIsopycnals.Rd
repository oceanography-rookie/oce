% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ctd.R
\name{drawIsopycnals}
\alias{drawIsopycnals}
\title{Add Isopycnal Curves to TS Plot}
\usage{
drawIsopycnals(
  nlevels = 6,
  levels,
  rotate = TRUE,
  rho1000 = FALSE,
  digits = 2,
  eos = getOption("oceEOS", default = "gsw"),
  trimIsopycnals = TRUE,
  cex = 0.75 * par("cex"),
  col = "darkgray",
  lwd = par("lwd"),
  lty = par("lty")
)
}
\arguments{
\item{nlevels}{suggested number of density levels (i.e. isopycnal curves);
ignored if \code{levels} is supplied.}

\item{levels}{optional density levels to draw.}

\item{rotate}{boolean, set to \code{TRUE} to write all density labels
horizontally.}

\item{rho1000}{boolean, set to \code{TRUE} to write isopycnal labels as e.g.
1024 instead of 24.}

\item{digits}{number of decimal digits to use in label (supplied to
\code{\link[=round]{round()}}).}

\item{eos}{equation of state to be used, either \code{"unesco"} or
\code{"gsw"}.}

\item{trimIsopycnals}{logical value (\code{TRUE} by default) that
indicates whether to trim isopycnal curves (if drawn)
to the region of temperature-salinity space for which density
computations are considered to be valid in the context of the
chosen \code{eos}; see the \dQuote{Details} of the documentation
for \code{\link[=plotTS]{plotTS()}}.}

\item{cex}{size for labels.}

\item{col}{color for lines and labels.}

\item{lwd}{line width for isopycnal curves}

\item{lty}{line type for isopycnal curves}
}
\value{
None.
}
\description{
Adds isopycnal lines to an existing temperature-salinity plot.  This is
called by \code{\link[=plotTS]{plotTS()}}, and may be called by the user also, e.g. if
an image plot is used to show TS data density.
}
\references{
\itemize{
\item Fofonoff, N. P., and R. C. Millard.
"Algorithms for Computation of Fundamental Properties of Seawater."
UNESCO Technical Papers in Marine Research. SCOR working group on Evaluation of CTD data;
UNESCO/ICES/SCOR/IAPSO Joint Panel on Oceanographic Tables and Standards, 1983.
\url{https://unesdoc.unesco.org/ark:/48223/pf0000059832}.
\item McDougall, Trevor J., David R. Jackett, Daniel G. Wright, and Rainer Feistel.
"Accurate and Computationally Efficient Algorithms for Potential Temperature and Density of Seawater."
Journal of Atmospheric and Oceanic Technology 20, no. 5 (May 1, 2003): 730–41.
\url{https://journals.ametsoc.org/jtech/article/20/5/730/2543/Accurate-and-Computationally-Efficient-Algorithms}.
}
}
\seealso{
\code{\link[=plotTS]{plotTS()}}, which calls this.
}
\author{
Dan Kelley
}
