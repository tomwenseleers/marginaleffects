% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\name{summary.predictions}
\alias{summary.predictions}
\title{Summarize a \code{predictions} object}
\usage{
\method{summary}{predictions}(object, conf_level = 0.95, transform_avg = NULL, ...)
}
\arguments{
\item{object}{An object produced by the \code{predictions} function}

\item{conf_level}{numeric value between 0 and 1. Confidence level to use to build a confidence interval.}

\item{transform_avg}{A function applied to the estimates and confidence intervals \emph{after} the unit-level estimates have been averaged.}

\item{...}{Additional arguments are passed to the \code{predict()} method
supplied by the modeling package.These arguments are particularly useful
for mixed-effects or bayesian models (see the online vignettes on the
\code{marginaleffects} website). Available arguments can vary from model to
model, depending on the range of supported arguments by each modeling
package. See the "Model-Specific Arguments" section of the
\code{?marginaleffects} documentation for a non-exhaustive list of available
arguments.}
}
\value{
Data frame of summary statistics for an object produced by the
\code{predictions} function
}
\description{
Summarize a \code{predictions} object
}
\seealso{
Other summary: 
\code{\link{glance.marginaleffects}()},
\code{\link{reexports}},
\code{\link{summary.comparisons}()},
\code{\link{summary.marginaleffects}()},
\code{\link{summary.marginalmeans}()},
\code{\link{tidy.comparisons}()},
\code{\link{tidy.deltamethod}()},
\code{\link{tidy.marginaleffects}()},
\code{\link{tidy.marginalmeans}()},
\code{\link{tidy.predictions}()}
}
\concept{summary}
