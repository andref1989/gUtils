% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{gr.sub}
\alias{gr.sub}
\title{Apply \code{gsub} to seqlevels of a \code{GRanges}}
\usage{
gr.sub(gr, a = c("(^chr)(\\\\.1$)", "MT"), b = c("", "M"))
}
\arguments{
\item{gr}{\code{GRanges} to switch out seqlevels for}

\item{a}{Vector of regular expressions of things to sub-out}

\item{b}{Vector of values to sub in}
}
\description{
Apply gsub to seqlevels of gr, by default removing 'chr', and "0.1" suffixes, and replacing "MT" with "M"
}

