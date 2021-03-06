% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/cudaMatrix.R
\docType{methods}
\name{cudaMatrix}
\alias{cudaMatrix}
\alias{cudaMatrix,matrix}
\alias{cudaMatrix,matrix-method}
\alias{cudaMatrix,missing}
\alias{cudaMatrix,missing-method}
\title{Construct a cudaMatrix}
\usage{
cudaMatrix(data = NA, ncol = NA, nrow = NA, type = NULL, ...)

\S4method{cudaMatrix}{matrix}(data, type = NULL)

\S4method{cudaMatrix}{missing}(data, ncol = NA, nrow = NA, type = NULL)
}
\arguments{
\item{data}{An object that is or can be converted to a
\code{matrix} object}

\item{ncol}{An integer specifying the number of columns}

\item{nrow}{An integer specifying the number of rows}

\item{type}{A character string specifying the type of cudaMatrix.  Default
is NULL where type is inherited from the source data type.}

\item{...}{Additional method to pass to cudaMatrix methods}
}
\value{
A cudaMatrix object
}
\description{
Construct a cudaMatrix of a class that inherits
from \code{cudaMatrix}
}
\author{
Charles Determan Jr.
}

