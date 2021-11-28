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
KNN_Euc <- function(X_test ,X_pred, Y, K){
  #X_test:
  #X_pred:
  #Y : observations

  #Do any extra compatibility checks

  #Initialize a prediction vector
  predict_vec <- c()
  y_index <- which(colnames(X_pred) == Y)
  #Create for loop to calculate the predictions by calculating nearest neighbors







  #Calculate the distance by calling the Euclidean distance function
  dist <- apply(X,1,Euclid_Dist_c, observation)

  #Calculate the closest neighbors
  #sort the distances calculated
  dist_ord <- sort(dist)[1:K]

  index_neighb <- which(dist %in% dist_ord)

  #Return the K data points that have the smallest distance
  return(list(index_neighb, dist_ord))
}
