% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gUtils.R
\name{\%$\%}
\alias{\%$\%}
\title{gr.val shortcut to get mean values of subject "x" meta data fields in query "y" (strand agnostic)}
\usage{
x \%$\% ...
}
\arguments{
\item{x}{\code{GRanges} object}
}
\value{
gr1 with extra meta data fields populated from gr2
}
\description{
Shortcut for gr.val (using val = names(values(y)))

gr1 %$% gr2
}
\author{
Marcin Imielinski
}

