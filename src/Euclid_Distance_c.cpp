#include "RcppArmadillo.h"
using namespace Rcpp;

// [[Rcpp::export]]
arma::colvec Euclid_Distance_c(const arma::mat& mat_d){
//Compute the Euclidean Distance of a Matrix
//Calculates by calculating the distance between the first row and each row in the matrix

//Initialize dimensions of the dataframe
//dataframe is an n x p matrix after turning into matrix form
  int n = mat_d.n_rows;
  int p = mat_d.n_cols;

//Initialize vector that will store the distances
    arma::colvec dist_Euc(n, arma::fill::zeros);

//Run for loop over the rows and calculate the distance
      for(int i = 0; 1 < n; i++){
        dist_Euc(i) = sqrt(arma::sum(pow((mat_d.row(1) - mat_d.row(i)),2)));
      }
//Return Euclidean Distance vector
      return(dist_Euc);
}






