% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/gUtils.R
\name{gr.findoverlaps}
\alias{gr.findoverlaps}
\title{gr.findoverlaps}
\usage{
gr.findoverlaps(query, subject, ignore.strand = TRUE, first = FALSE,
  qcol = NULL, scol = NULL, max.chunk = 1e+13,
  foverlaps = ifelse(is.na(as.logical(Sys.getenv("GRFO_FOVERLAPS"))), TRUE,
  as.logical(Sys.getenv("GRFO_FOVERLAPS"))) & exists("foverlaps"),
  pintersect = NA, verbose = F, type = "any", by = NULL, mc.cores = 1,
  return.type = "same", ...)
}
\arguments{
\item{query}{Query \code{GRanges}}

\item{subject}{Subject \code{GRanges}}

\item{ignore.strand}{[Default TRUE] Ignore the strand when doing overlap queries}

\item{first}{[Default FALSE]}

\item{qcol}{any query metadata columns to add to result}

\item{scol}{any subject metadata columns to add to result}

\item{max.chunk}{[Default 1e13] If query is bigger than this, chunks into smaller pieces and sends to multi-cores}

\item{foverlaps}{Should we use data.table::foverlaps? Auto detects this}

\item{pintersect}{Should we use IRanges::pintersect? Auto determines this if NA}

\item{verbose}{Default FALSE}

\item{type}{Default "any"}

\item{by}{Do overlaps within groups}

\item{mc.cores}{Default 1. Only active if exceeded max.chunk (ideally should not use)}

\item{return.type}{Default "same"}

\item{...}{= additional args for findOverlaps (IRanges version)}
}
\description{
(faster) replacement for GRanges version of findOverlaps
returns granges of matches with two additional fields
$query.id - index of matching query
$subject.id - index of matching subject
}
\details{
pintersect employs pintersect to find overlaps, in general this is slower, but can be much faster with much lower
memory footprint for large ranges sets with many different seqnames (eg transcriptome)
max.chunk controls the maximum number of range pairs that compared at once

Optional "by" field is a character scalar that specifies a metadata column present in both query and subject
that will be used to additionally restrict matches, i.e. to pairs of ranges that overlap and also
have the same values of their "by" fields
}
