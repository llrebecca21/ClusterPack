% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Minkowski_Distance.R
\name{Minkowski_Distance}
\alias{Minkowski_Distance}
\title{Minkowski Distance function}
\usage{
Minkowski_Distance(X, v, p)
}
\arguments{
\item{X}{n x m matrix or numeric dataframe}

\item{v}{1 x m vector}

\item{p}{positive non-zero integer}
}
\value{
column matrix of (Minkowski) distances between the rows of X and a vector v
}
\description{
Minkowski Distance function
}
\examples{
X = matrix(c(4,3,2,8,9,5), nrow = 3)
v = c(10,7)
p = 2
Minkowski_Distance(X,v,p)
#Returns the following:
# [37,53,68]'

X = matrix(c(1,2,3,4,5,6), nrow = 3)
v = c(10,3)
p = Inf
Minkowski_Distance(X, v, p)
# Returns the following:
# [9, 8, 7]'
}
