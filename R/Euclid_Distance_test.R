#Test File for Euclidean Distance Function
library(Rcpp)
library(RcppArmadillo)
library(microbenchmark)
source("R\\Euclid_Distance.R")
sourceCpp("src\\Euclid_Distance_c.cpp")

set.seed(101)
A <- matrix(rnorm(20), nrow = 5)
print(A)

print(Euclid_Distance(A))

print(microbenchmark(Euclid_Distance(A),
               Euclid_Distance_c(A),
               times = 10000))

#Test for Knn_Euclid
X <- iris[1:(nrow(iris)-1), ]
print(X)
observation <- iris[nrow(iris), ]


#Run the algorithm to grab the indices
nn <- KNN_Euc(X = X[ ,1:4], observation = observation[, 1:4],K = 4)[[1]]
as.matrix(X[nn,1:4])




