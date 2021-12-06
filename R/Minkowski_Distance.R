#' Minkowski Distance function
#'
#' @param X
#' @param v
#' @param p
#'
#' @return
#' @export
#'
#' @examples
Minkowski_distance <- function(X,v,p){
    #Calculate Minkowski distance between the two vectors
    Mink_dist_vec <- Minkowski_Distance_c(X,v,p)

  return(Mink_dist_vec)
}
