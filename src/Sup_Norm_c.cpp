#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Sup_Norm_c(const arma::mat& X, const arma::rowvec& v){
  //Compute Sup Norm between rows of X and vector v

  arma::mat sup_mat = X.each_row() - v;
  sup_mat = abs(sup_mat);
  arma::colvec sup_vec = max(sup_mat,1);
  //man_dist_vec = arma::sum(abs(X-v));

  return(sup_vec);
}
