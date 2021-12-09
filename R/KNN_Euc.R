#' KNN_Euc function
#'
#' @param X_test n x m numeric dataframe or matrix
#' @param X_pred r x m numeric dataframe or matrix
#' @param Y_test n x 1 dataframe or matrix label column which is the label column for the X_test dataframe
#' @param Y_pred r x 1 dataframe or matrix label column which is the label column for the X_pred dataframe
#' @param K      integer value; the number of neighbors
#' @param pred_weights default is FALSE; if TRUE will calculate weights for predictions of K-nearest Neighbors
#'                     by calculating the inverse of the distances of the K-nearest neighbors if Y_test is of numeric type.
#' @param method Determines how distance will be calculated for nearest-neighbors. Choose from the following:
#'               "Euc": will calculate using the Euclidean Distance
#'               "Man": will calculate using the Manhattan Distance
#'               "Min": will calculate using the Minkowski Distance
#'               "Cos": will calculate using the Cosine-Similarity Distance
#'
#' @return  r x 1 vector of predicted labels for the X_pred dataframe
#' @export
#'
#' @examples
#' ## Using the built-in iris dataframe
#'
#' set.seed(1234)
#' n_fit = 10
#' train_ind = sample(1:nrow(iris),n_fit)
#' X_test = iris[-train_ind, -ncol(iris)]
#' X_pred = iris[train_ind, -ncol(iris)]
#'
#' Y_test = iris[-train_ind, ncol(iris)]
#' Y_pred = iris[train_ind, ncol(iris)]
#'
#' KNN_Euc(X_test = X_test, X_pred = X_pred, Y_test = Y_test, Y_pred = Y_pred, K = 5)
#'
#' ## returns the following:
#' ## [1] "setosa"   "versicolor"   "virginica"   "virginica"  "virginica"   "virginica"
#' ## [7] ""virginica"   "virginica"   "versicolor"   "virginica"
#'
KNN_Euc <- function(X_test, X_pred, Y_test, Y_pred, K, method = c("Euc", "Man", "Min", "Cos"), pred_weights = FALSE, p = NULL) {
  if (is.numeric(K) == FALSE) {
    stop("K needs to be an integer")
  }

  if (K <= 0) {
    stop("K needs to be greater than zero")
  }

  if (is.vector(X_test)) {
    X_test <- as.matrix(X_test, nrow = 1)
  } else {
    X_test <- as.matrix(X_test)
  }

  Y_test <- as.vector(Y_test)

  if (is.vector(X_pred)) {
    X_pred <- as.matrix(X_pred, nrow = 1)
  } else {
    X_pred <- as.matrix(X_pred)
  }

  Y_pred <- as.vector(Y_pred)

  # compatibility checks for dimensionality
  if (nrow(X_test) != length(Y_test)) {
    stop("The number of rows of X_test does not match the length of Y_test")
  }

  if (nrow(X_pred) != length(Y_pred)) {
    stop("The number of rows of X_pred does not match the length of Y_pred")
  }

  if (ncol(X_test) != ncol(X_pred)) {
    stop("The number of columns of X_test and X_pred are not equal")
  }
  # Initialize a prediction vector and any other variables before for loop
  m <- nrow(X_pred)
  predict_vec <- c()
  method <- match.arg(method)
  # Create for loop to calculate the predictions by calculating nearest neighbors
  for (i in 1:m) {

    # Calculate distances and nearest neighbors by calling Nearest_Neighbors function
    # Nearest_Neighbors returns a list with distances and index_of_neighbors
    if (is.null(p) == TRUE) {
      nearest <- Nearest_Neighbors(X = X_test, observation = X_pred[i, ], K = K, method = method)
    } else {
      nearest <- Nearest_Neighbors(X = X_test, observation = X_pred[i, ], K = K, method = method, p = p)
    }
    # Calculate predictions by calling Prediction_NN function
    if (pred_weights == TRUE) {
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], , drop = FALSE], Y = Y_test[nearest[[1]]], weights = nearest[[2]])
    } else {
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], , drop = FALSE], Y = Y_test[nearest[[1]]])
    }
  }
  return(predict_vec)
}
