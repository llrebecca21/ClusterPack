Nearest_Neighbors <- function(X, observation, K){
  #Calculate the nearest neighbors

  #Check number of variables is the same
  if(ncol(X) != ncol(observation)){
    stop("The number of variables needs to be the same")
  }
  #Calculate the distance by calling the Euclidean distance function
  # Apply Euclid_Distance_c over the rows of X
  X <- as.matrix(X)
  dist <- apply(X = X, MARGIN = 1, FUN = Euclid_Distance, observation)

  #Calculate the closest neighbors
  #sort the distances calculated
  distances <- sort(dist)[1:K]
  index_neighb <- which(dist %in% distances)

  return(list(index_of_neighbors = index_neighb, distances = distances))
}







