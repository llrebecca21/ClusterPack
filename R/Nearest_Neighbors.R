Nearest_Neighbors <- function(X, observation, K){
  #Calculate the nearest neighbors

  #X is the X_test matrix
  #observation is a single row of X_pred

  # Calculate the distance by calling the Euclidean distance function
  # Apply Euclid_Distance_c over the rows of X
  dist <- Euclid_Distance_c(X, observation)

  #Calculate the closest neighbors
  #sort the distances calculated
  distances <- sort(dist)[1:K]
  index_neighb <- which(dist %in% distances)

  return(list(index_of_neighbors = index_neighb, distances = distances))
}
