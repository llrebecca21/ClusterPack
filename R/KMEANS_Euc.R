#' KMEANS function
#'
#' @param X
#' @param K
#' @param M
#' @param numIter
#'
#' @return
#' @export
#'
#' @examples
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
