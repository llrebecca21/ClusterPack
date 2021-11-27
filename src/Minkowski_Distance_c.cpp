#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Minkowski_Distance_c(const arma::uvec& v1, const arma::uvec& v2, int p){
      // calculate the Minkowski Distance between two vectors

      //initialize the vector that will store the distances
      arma::colvec Mink_dist_vec;

      // sum(pow(abs(pow((v1-v2),p)),1/p))
      Mink_dist_vec = arma::sum(pow(abs(pow((v1-v2),p)),1/p));

      return(Mink_dist_vec);
}









