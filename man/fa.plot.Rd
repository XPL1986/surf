% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/faseq.R
\name{fa.plot}
\alias{fa.plot}
\title{Functional association plot}
\usage{
fa.plot(
  object,
  plot.event = "all",
  trim = metadata(object)$trim,
  fdr.cutoff = 0.05
)
}
\arguments{
\item{object}{a \code{surf} object from \link{faseq} or \link{faseqFit} or \link{faseqInfer}.}

\item{plot.event}{\code{character} vector, event type wanted. In particular, "all" means all event types.}

\item{fdr.cutoff}{\code{numeric}, theshold for adjusted p-value in functional association test.}
}
\value{
a \code{ggplot} object.
}
\description{
This function provides a ggplot implementation for functional association (FA) plot.
}
