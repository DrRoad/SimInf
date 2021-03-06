% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{pairs,SimInf_model-method}
\alias{pairs,SimInf_model-method}
\title{Scatterplot of number of individuals in each compartment}
\usage{
\S4method{pairs}{SimInf_model}(x, ...)
}
\arguments{
\item{x}{The \code{model} to plot}

\item{...}{Additional arguments affecting the plot produced.}
}
\description{
A matrix of scatterplots with the number of individuals in each
compartment is produced. The \code{ij}th scatterplot contains
\code{x[,i]} plotted against \code{x[,j]}.
}
\examples{
## Create an 'SIR' model with 10 nodes and initialise
## it with 99 susceptible individuals and one infected
## individual. Let the model run over 100 days.
model <- SIR(u0 = data.frame(S = rep(99, 10),
                             I = rep(1, 10),
                             R = rep(0, 10)),
             tspan = 1:100,
             beta = 0.16,
             gamma = 0.077)

## Run the model and save the result.
result <- run(model)

## Create a scatter plot
pairs(result)
}
