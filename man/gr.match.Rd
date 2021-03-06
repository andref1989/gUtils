% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{gr.match}
\alias{gr.match}
\title{Alternative \code{GenomicRanges::match} that accepts additional \code{\link{gr.findoverlaps}} options}
\usage{
gr.match(query, subject, ...)
}
\arguments{
\item{query}{Query \code{GRanges} pile}

\item{subject}{Subject \code{GRanges} pile}

\item{...}{Additional arguments to be passed along to \code{\link{gr.findoverlaps}}.}
}
\value{
Vector of length = \code{length(query)} with subject indices of *first* subject in query, or NA if none found.
This behavior is different from \code{\link{gr.findoverlaps}}, which will
return *all* indicies of subject in query (in the case of one query overlaps with multiple subject)
... = additional args for findOverlaps (IRanges version)
}
\description{
Wrapper to \code{GenomicRanges::match} (uses \code{\link{gr.findoverlaps}}). This allows users to
match on additional \code{by} fields, or chunk into smaller pieces for lower memory.
}

