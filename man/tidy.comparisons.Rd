% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy.comparisons.R
\name{tidy.comparisons}
\alias{tidy.comparisons}
\title{Tidy a \code{comparisons} object}
\usage{
\method{tidy}{comparisons}(x, conf_level = 0.95, transform_avg = NULL, ...)
}
\arguments{
\item{x}{An object produced by the \code{comparisons} function.}

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
A "tidy" \code{data.frame} of summary statistics which conforms to the
\code{broom} package specification.
}
\description{
Calculate average contrasts by taking the mean of all the
unit-level contrasts computed by the \code{predictions} function.
}
\details{
To compute standard errors around the average marginaleffects, we begin by applying the
mean function to each column of the Jacobian. Then, we use this matrix in the Delta
method to obtained standard errors.

In Bayesian models (e.g., \code{brms}), we compute Average Marginal
Effects by applying the mean function twice. First, we apply it to all
marginal effects for each posterior draw, thereby estimating one Average (or
Median) Marginal Effect per iteration of the MCMC chain. Second, we
calculate the mean and the \code{quantile} function to the results of Step 1 to
obtain the Average Marginal Effect and its associated interval.
}
\examples{
mod <- lm(mpg ~ factor(gear), data = mtcars)
contr <- comparisons(mod, variables = list(gear = "sequential"))
tidy(contr)
}
\seealso{
Other summary: 
\code{\link{glance.marginaleffects}()},
\code{\link{reexports}},
\code{\link{summary.comparisons}()},
\code{\link{summary.marginaleffects}()},
\code{\link{summary.marginalmeans}()},
\code{\link{summary.predictions}()},
\code{\link{tidy.deltamethod}()},
\code{\link{tidy.marginaleffects}()},
\code{\link{tidy.marginalmeans}()},
\code{\link{tidy.predictions}()}
}
\concept{summary}
