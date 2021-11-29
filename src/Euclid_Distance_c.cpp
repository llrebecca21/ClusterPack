#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
double Euclid_Distance_c(const arma::uvec& v1, const arma::uvec& v2){
//Compute the Euclidean Distance of a Matrix
//Calculates by calculating the distance between the first row and each row in the matrix
      double dist_Euc = sqrt(pow(arma::accu(v1-v2),2));
//Return Euclidean Distance vector
      return(dist_Euc);
}
