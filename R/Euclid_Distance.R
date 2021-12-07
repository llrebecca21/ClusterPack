#' Euclid_Distance function
#'
#' @param X n x k matrix
#' @param v 1 x k vector
#'
#' @return (Euclidean) distance between the rows of X and the vector v
#' @export
#'
#' @examples
Euclid_Distance <- function(X, v){
  #Check that the number of columns of X is the same length as vector v
  if(ncol(X)!= length(v)){
    stop("The number of columns of X is not equal to the length of v")
  }else{
    dist_Euc <- Euclid_Distance_c(X,v)
  }
  return(dist_Euc)
}
