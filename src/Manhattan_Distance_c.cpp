#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Manhattan_Distance_c(const arma::mat& X, const arma::rowvec& v ){
  //Compute Manhattan Distance between X and v
  //initialize the vector that will store the distances

  // Man vectorized version
  arma::mat man_mat = X.each_row() - v;
            man_mat = abs(man_mat);
  arma::colvec man_vec = arma::sum(man_mat,1);


  //Compute the distances
  //man_dist_vec = arma::sum(abs(X-v));

  return(man_vec);
}
