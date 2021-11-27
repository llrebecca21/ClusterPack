#include "RcppArmadillo.h"
using namespace Rcpp;

arma::colvec Manhattan_Distance_c(const arma::uvec& v1, const arma::uvec& v2 ){
  //Compute Manhattan Distance between vectors v1 and v2
  //initialize the vector that will store the distances
  arma::colvec man_dist_vec;

  //Compute the distances
  man_dist_vec = arma::sum(abs(v1-v2));

  return(man_dist_vec);
}








