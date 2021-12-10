#' Euclid_Distance function
#'
#' @param X n x m matrix
#' @param v 1 x m vector
#'
#' @return (Euclidean) distance between the rows of X and the vector v
#' @export
#'
#' @examples
#' X = matrix(c(17,40,20,39,30.1,55.5), nrow = 2)
#' v = c(10.2,30,45)
#' Euclid_Distance(X,v)
Euclid_Distance <- function(X, v){
  #Check that the number of columns of X is the same length as vector v
  if(ncol(X)!= length(v)){
    stop("The number of columns of X is not equal to the length of v")
  }else{
    dist_Euc = Euclid_Distance_c(X,v)
  }
  return(dist_Euc)
}
