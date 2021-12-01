#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Euclid_Distance_c(const arma::mat& X, const arma::rowvec& v){
//Compute the Euclidean Distance of a Matrix
//Calculates by calculating the distance between the first row and each row in the matrix
      arma::mat m1 = X.each_row() - v;
                m1 = square(m1);
      arma::colvec d1 = sum(m1, 1);
                   d1 = sqrt(d1);

//Return Euclidean Distance vector
      return(d1);
}
