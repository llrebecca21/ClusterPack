#' Nearest_Neighbors function
#'
#' @param X n x m matrix
#' @param observation 1 x m vector which is a row of the matrix X
#' @param K positive integer that is the number of nearest-neighbors
#' @param method Which distance equation will be used to calculate the nearest-neighbors.
#' @param p If supplied, the positive integer used in calculating the Minkowski distance
#'
#' @return A list with first item is the 1 x K vector of indices of the nearest-neighbors and
#'         the second item is the 1 x K vector of distances to the nearest-neighbors.
#'
Nearest_Neighbors <- function(X, observation, K, method, p = NULL) {
  # Calculate the nearest neighbors

  # X is the X_test matrix
  # observation is a single row of X_pred

  # Calculate the distance by calling the distance function requested in method argument
  if (method == "Euc") {
    # Apply Euclid_Distance over the rows of X
    dist <- Euclid_Distance(X, observation)
  }

  if (method == "Man") {
    # Apply Manhattan_Distance over the rows of X
    dist <- Manhattan_Distance(X, observation)
  }

  if (method == "Min") {
    # Apply Minkowski_Distance over the rows of X
    dist <- Minkowski_Distance(X, observation, p)
  }

  if (method == "Cos") {
    # Apply Cos_Distance over the rows of X
    dist <- Cos_Distance(X, observation)
  }

  # Calculate the closest neighbors
  # sort the distances calculated
  distances <- sort(dist)[1:K]
  index_neighb <- which(dist %in% distances)

  return(list(index_of_neighbors = index_neighb, distances = distances))
}
