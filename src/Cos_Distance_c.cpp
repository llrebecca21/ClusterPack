#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Cos_Distance_c(arma::mat& X, arma::rowvec& v){

  // Create C++ version of Cos-Similarity distance equation
  arma::mat mult = X.each_row() % v;
  arma::colvec dot_prod = sum(mult, 1);
  arma::colvec denom = sqrt(sum(X % X, 1)) * arma::norm(v);
  arma::colvec cos_vec = 1 - (dot_prod/denom);

  return(cos_vec);
}
