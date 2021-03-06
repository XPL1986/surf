% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utility.R
\name{c_granges}
\alias{c_granges}
\title{Concatenate a list of GRanges}
\usage{
c_granges(grl, use.names = T, sep = ".", save.names = F)
}
\arguments{
\item{grl}{a list of [GRanges].}

\item{use.names}{logical, whether (`TRUE`) to inherit list names.}

\item{sep}{character, seperator between list names and GRanges names.}

\item{save.names}{logical or character, if not FALSE, save list names as an attribute (i.e., [mcols()]).s}
}
\value{
a [GRanges] object
}
\description{
Concatenate a list of GRanges
}
