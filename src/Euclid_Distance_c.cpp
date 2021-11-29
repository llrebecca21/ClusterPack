#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
double Euclid_Distance_c(const arma::colvec& v1, const arma::colvec& v2){
//Compute the Euclidean Distance of a Matrix
//Calculates by calculating the distance between the first row and each row in the matrix
      double vec_sum = accu(v1 - v2);
      double vec_sq  = pow(vec_sum, 2);
      double dist_Euc = sqrt(vec_sq);
//Return Euclidean Distance vector
      return(dist_Euc);
}
