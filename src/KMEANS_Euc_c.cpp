#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::uvec KMEANS_Euc_c(const arma::mat& X, int K,
                        const arma::mat& M, int numIter = 100){
  // All input is assumed to be correct

  // Initialize some parameters
  int n = X.n_rows;
  int p = X.n_cols;
  arma::uvec Y(n, arma::fill::zeros); // to store cluster assignments

  // Initialize any additional parameters if needed
  // Initialize New_X = 2X
  arma::mat Q = M;
  arma::mat New_X = 2 * X;
  arma::uvec Y1(n);
  arma::colvec Sum_Row_M(K);
  arma::mat Sum_Row_M_Mat(n, K);
  arma::mat Distance_Euc(n,K);
  arma::uvec pseq = arma::linspace<arma::uvec>(0, p-1, p);
  // For loop with kmeans algorithm
  while (numIter > 0){
    numIter = numIter - 1;
    // Set Y for first iteration
    Y1 = Y;

    //Determine Distance between points in X and M using equivalent tcrossprod
    //Determine the sum of the M^2 (element-wise) rows
    Sum_Row_M = arma::sum(Q % Q, 1); //returns a K x 1 vector

    //
    // n x K matrix
    for(int i = 0; i < n; i++){
      Sum_Row_M_Mat.row(i) = Sum_Row_M.t();
    }

    //Calculate Euclidean Distance
    Distance_Euc = Sum_Row_M_Mat - New_X * Q.t();
    // Rcout << "Distance M: \n" << Distance_Euc << "\n";

    Y = index_min(Distance_Euc, 1);

    // check if Y and Y1 are equal
    // Rcout << "Y1: \n" << Y1 << ", Y: \n" << Y << "\n";
    if(approx_equal(Y1, Y, "absdiff", 0)){
      break;
    }

    //determine if the columns of X == 1

    for(int i = 0; i < K; i++){
      Q.row(i) = mean(X.submat(find(Y == i), pseq), 0);
    }

  }
  // Returns the vector of cluster assignments
  return(Y);
}
