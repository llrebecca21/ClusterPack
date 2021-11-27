#' Knn function
#'
#' @param a
#' @param b
#'
#' @return
#' @export
#'
#' @examples
Knn <- function(X,observation,K, dist, p = NULL){
  #X : n x p data set
  #observation :

  #Check compatibility of X and observation
  if(ncol(X) != ncol(observation)){
    stop("The data does not have the same number of variables!")
  }
  #Calculate the distance by calling whichever distance function is called

  #Calculate the closest neighbors
    #sort the distances calculated

  #Return the K data points that have the smallest distance
}














