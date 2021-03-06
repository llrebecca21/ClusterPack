#' Minkowski Distance function
#'
#' @param X n x m matrix or numeric dataframe
#' @param v 1 x m vector
#' @param p positive non-zero integer
#'
#' @return column matrix of (Minkowski) distances between the rows of X and a vector v
#' @export
#'
#' @examples
#' X = matrix(c(4,3,2,8,9,5), nrow = 3)
#' v = c(10,7)
#' p = 2
#' Minkowski_Distance(X,v,p)
#' #Returns the following:
#' # [37,53,68]'
#'
#' X = matrix(c(1,2,3,4,5,6), nrow = 3)
#' v = c(10,3)
#' p = Inf
#' Minkowski_Distance(X, v, p)
#' # Returns the following:
#' # [9, 8, 7]'
Minkowski_Distance <- function(X,v,p){
  if (ncol(X) != length(v)){
    stop('The number of rows of X needs to be equal to the length of v')
  }
  if(p == Inf){
    Mink_dist_vec = Sup_Norm_c(X,v)
  }else{
    #Calculate Minkowski distance between the rows of X and the vector v with p as specified by input
    Mink_dist_vec = Minkowski_Distance_c(X,v,p)
  }
  return(Mink_dist_vec)
}
