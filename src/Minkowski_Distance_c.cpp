#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Minkowski_Distance_c(const arma::mat& X, const arma::rowvec& v, int p){
      // calculate the Minkowski Distance between a Matrix and a vector

      // pow(sum(pow(abs(X -v),p)),1/p)
      arma::mat min_mat = X.each_row() - v;
                min_mat = abs(min_mat);
                min_mat = pow(min_mat, p);
      arma::colvec min_vec = arma::sum(min_mat, 1);
               min_mat = pow(min_vec, 1/p);

      return(min_vec);
}









