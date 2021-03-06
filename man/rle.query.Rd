% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{rle.query}
\alias{rle.query}
\title{Queries an \code{\link{RleList}} representing genomic data}
\usage{
rle.query(subject.rle, query.gr, verbose = FALSE, mc.cores = 1,
  chunksize = 1e+09)
}
\arguments{
\item{subject.rle}{\code{Rle}}

\item{query.gr}{TODO}

\item{verbose}{Set the verbosity of the output}

\item{mc.cores}{Number of cores to apply when doing chunked operation}

\item{chunksize}{Number of \code{query.gr} ranges to consider in one memory chunk. 1e9}
}
\value{
Rle representing the (concatenated) vector of data (reversing order in case of negative strand input)
}
\description{
(ie a list whose names represent seqnames ie chromosomes, and lengths represent seqlengths)
via \code{GRanges} object
}
\note{
Throws warning if seqlengths(gr) do not correspond to the lengths of the \code{RleList} components
}

