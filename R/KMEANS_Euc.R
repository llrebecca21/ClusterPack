#' KMEANS_Euc function
#'
#' @param X An n x p matrix of data points
#' @param K Number of clusters given as an integer
#' @param M Initial K x p matrix of cluster centers
#' @param numIter maximal number of iterations for the algorithm
#'
#' @return Returns a vector of length n of cluster assignments
#' @export
#'
#' @examples
#' X = matrix(c( 1,  2,  3, 0,  1,  2, 9, 10, 11, 10, 11, 12), nrow = 4, ncol = 3, byrow = TRUE)
#' K = 2
#' KMEANS_Euc(X, K)
#' # returns the column matrix: [0, 0, 1, 1]' or [1, 1, 0, 0]'
#'
KMEANS_Euc <- function(X, K, M = NULL, numIter = 100) {
  n <- nrow(X) # number of rows in X
  # Check that X is a matrix
  X <- as.matrix(X)
  # Check whether M is NULL or not. If NULL, initialize based on K random points from X. If not NULL, check for compatibility with X dimensions.
  if (is.null(M)) {
    M <- X[sample(1:nrow(X), K, replace = FALSE), , drop = FALSE]
  } else {
    if (dim(as.matrix(M))[2] != ncol(X)) {
      stop(sprintf("Number of columns in \'X\' (%g) does not match number of columns in \'M\' (%g)!", ncol(X), dim(as.matrix(M))[2]))
    } else if (any(duplicated(M))) {
      stop("There is a duplicated cluster center in \'M\'!")
    } else if (dim(as.matrix(M))[1] > nrow(X)) {
      stop(sprintf("Number of cluster centers in \'M\' (%g) exceeds the number of rows of \'X\' (%g)!"), dim(as.matrix(M))[1], nrow(X))
    }
  }

  # Call C++ MyKmeans_c function to implement the algorithm
  Y <- KMEANS_Euc_c(X, K, M, numIter)

  # Return the class assignments
  return(Y)
}
