#' KNN_Euc function
#'
#' @param X
#' @param observation
#' @param K
#'
#' @return
#' @export
#'
#' @examples
KNN_Euc <- function(X,observation,K){
  #X : n x p data set
  #observation :

  #Check compatibility of X and observation
  if(ncol(X) != ncol(observation)){
    stop("The data does not have the same number of variables!")
  }
  #Calculate the distance by calling the Euclidean distance function
  dist <- apply(X,1,Euclidean_Distance_Gen, observation)

  #Calculate the closest neighbors
  #sort the distances calculated
  dist_ord <- sort(dist)[1:K]

  index_neighb <- which(dist %in% dist_ord)

  #Return the K data points that have the smallest distance
  return(list(index_neighb, dist_ord))
}
