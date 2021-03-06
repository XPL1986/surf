% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/faseq.R
\name{faseq}
\alias{faseq}
\title{DASeq}
\usage{
faseq(
  event,
  sampleData,
  signal.type = "FPKM",
  FUN.aggregate = "mean",
  minMQS = 10,
  minOverlap = 12,
  isPairedEnd = T,
  cores = max(1, detectCores() - 2),
  ...,
  min.size = 100,
  trim = 0.025,
  fdr.cutoff = 0.05,
  signal.cutoff = 20,
  verbose = F
)
}
\arguments{
\item{event}{a \code{surf} object.}

\item{sampleData}{\code{data.frame}, must contain two columns -- `bam` and `condition` (for "IP" and "input", the IP should come first), whose \code{row.names} represent the sample names. `bam` is the file name of CLIP-seq bam. `condition` will be coerced to factor, whose first level will be treated as IP, and the second level as input.}

\item{signal.type}{\code{character}, indicate the type of feature signal wanted, support `TPM` for Transcripts Per Kilobase Million, `FPKM` for Fragments Per Kilobase Million (for paired-end reads) and Reads Per Kilobase Million (for single-end reads), and `raw.count` for raw.count read counts}

\item{FUN.aggregate}{\code{function}, used for aggreating signals within \code{conditon}, default to mean.}

\item{cores}{\code{integer}, number of available workers, sent to \code{nthreads} of \link{featureCounts}}

\item{...}{parameters for \link{Rsubread::featureCounts}.}

\item{min.size}{\code{integer}, the minimum size of "reliable" training set, default to `60`.}

\item{trim}{\code{numeric}, the percentile used to trim the training data. This is useful in producing a more robust estimation of functional association.}

\item{fdr.cutoff}{\code{numeric}, significance cutoff for the adjusted p-values of FAT.}

\item{signal.cutoff}{\code{numeric}, threshold cut-off for the eCLIP signals, default to 20. Set this to 0 if dont wnat to filter those location with low eCLIP signals of the RBP.}

\item{verbose}{\code{logical}, whether (default to \code{TRUE}) to echo progess}
}
\value{
a \code{surf} object DASeq results updated.
}
\description{
Perform the functional association analysis (DASeq) in a single command. 
This function is a wrapper that calls the necessary functions in order for DASeq.
}
\references{
Chen F and Keles S. "SURF: Integrative analysis of a compendium of RNA-seq and CLIP-seq datasets highlights complex governing of alternative transcriptional regulation by RNA-binding proteins."
}
