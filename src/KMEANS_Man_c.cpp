#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::uvec KMEANS_Man_c(const arma::mat& X, int K,
                        const arma::mat& M, int numIter = 100){
  // All input is assumed to be correct

  // Initialize some parameters
  int n = X.n_rows;
  int p = X.n_cols;
  arma::uvec Y(n, arma::fill::zeros); // to store cluster assignments


  // Returns the vector of cluster assignments
  return(Y);
}
