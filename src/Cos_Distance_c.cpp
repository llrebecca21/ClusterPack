// -*- mode: C++; c-indent-level: 4; c-basic-offset: 4; indent-tabs-mode: nil; -*-

// we only include RcppArmadillo.h which pulls Rcpp.h in for us
#include "RcppArmadillo.h"

// via the depends attribute we tell Rcpp to create hooks for
// RcppArmadillo so that the build process will know what to do
//
// [[Rcpp::depends(RcppArmadillo)]]
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
