#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Cos_Distance_c(arma::mat& X, arma::rowvec& v){
  //numerator <- colSums(t(X) * v)
  //denominator <- sqrt(rowSums(X * X) * sum(b*b))
  //return(1 - (numerator/denominator))


  // Create C++ version of this distance equation
  arma::mat mult = X.each_row() % v;
  arma::colvec dot_prod = sum(mult, 1);
  arma::colvec denom = sqrt(sum(X % X, 1)) * arma::norm(v);
  arma::colvec cos_vec = 1 - (dot_prod/denom);

  return(cos_vec);
}

/***R
X = matrix(rnorm(1:10), 5)
print(X)
v = rnorm(1:2)
print(v)

print(Cos_Distance_c(X, v))
*/


