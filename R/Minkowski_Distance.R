#' Minkowski Distance function
#'
#' @param X n x p matrix or numeric dataframe
#' @param v 1 x n vector
#' @param p positive non-zero integer
#'
#' @return vector of (Minkowski) distances between the rows of X and a vector v
#' @export
#'
#' @examples
Minkowski_distance <- function(X,v,p){
    #Calculate Minkowski distance between the two vectors
    Mink_dist_vec <- Minkowski_Distance_c(X,v,p)

  return(Mink_dist_vec)
}
