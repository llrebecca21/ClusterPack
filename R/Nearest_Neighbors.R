Nearest_Neighbors <- function(X, observation, K){
  #Calculate the nearest neighbors
  #Initialize observation variable
  observation <- X_pred[i, -y_index]

  #Check number of variables is the same
  if(ncol(X) != ncol(observation)){
    stop("The number of variables needs to be the same")
  }
  #Calculate the distance by calling the Euclidean distance function
  dist <- apply(X,1,Euclid_Distance, observation)

  #Calculate the closest neighbors
  #sort the distances calculated
  distances <- sort(dist)[1:K]
  index_neighb <- which(dist %in% dist_ord)
}







