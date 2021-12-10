#' Minkowski Distance function
#'
#' @param X n x m matrix or numeric dataframe
#' @param v 1 x m vector
#' @param p positive non-zero integer
#'
#' @return vector of (Minkowski) distances between the rows of X and a vector v
#' @export
#'
#' @examples
#' X = matrix(c(4,3,2,8,9,5), nrow = 3)
#' v = c(10,7)
#' p = 2
#' Minkowski_Distance(X,v,p)
Minkowski_Distance <- function(X,v,p){
    #Calculate Minkowski distance between the two vectors
    Mink_dist_vec <- Minkowski_Distance_c(X,v,p)

  return(Mink_dist_vec)
}
