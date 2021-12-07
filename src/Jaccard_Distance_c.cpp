#include "RcppArmadillo.h"
using namespace Rcpp;

arma::colvec Jaccard_Distance_c(const arma::mat& X, const arma::rowvec& v){
  //A <- length(X)
  //B <- length(y)
  //inter_Xy <- length(intersection(X,y))
  //un_Xy <- A + B - lint_Xy
  //return(inter_Xy/un_Xy)

  //Compute length of a single row of X
  //Compute length of y

  //compute the length of the intersection of X and y

  //compute the union equation

  //return intersection/union to get the Jaccard coefficient vector
}

