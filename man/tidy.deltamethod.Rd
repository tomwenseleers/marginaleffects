% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy.R
\name{tidy.deltamethod}
\alias{tidy.deltamethod}
\title{Tidy a \code{deltamethod} object}
\usage{
\method{tidy}{deltamethod}(x, ...)
}
\arguments{
\item{x}{An object produced by the \code{marginaleffects} function.}

\item{...}{Additional arguments are passed to the \code{predict()} method
supplied by the modeling package.These arguments are particularly useful
for mixed-effects or bayesian models (see the online vignettes on the
\code{marginaleffects} website). Available arguments can vary from model to
model, depending on the range of supported arguments by each modeling
package. See the "Model-Specific Arguments" section of the
\code{?marginaleffects} documentation for a non-exhaustive list of available
arguments.}
}
\description{
Tidy a \code{deltamethod} object
}
\seealso{
Other summary: 
\code{\link{glance.marginaleffects}()},
\code{\link{reexports}},
\code{\link{summary.comparisons}()},
\code{\link{summary.marginaleffects}()},
\code{\link{summary.marginalmeans}()},
\code{\link{summary.predictions}()},
\code{\link{tidy.comparisons}()},
\code{\link{tidy.marginaleffects}()},
\code{\link{tidy.marginalmeans}()},
\code{\link{tidy.predictions}()}
}
\concept{summary}
