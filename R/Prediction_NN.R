#' Prediction_NN function
#'
#' @param X n x m matrix
#' @param Y 1 x m vector which is a single row of the matrix X
#' @param weights If supplied will be given the vector of distances calculated from the Nearest_Neighbors function
#'
#' @return vector of predicted labels
#'
Prediction_NN <- function(X, Y, weights = NULL) {

  # If Y is a factor type:
  if (is.factor(Y) | is.character(Y)) {
    group <- table(Y)
    pred <- names(group[group == max(group)])[1]
  }

  # If Y is a numeric type:
  if (is.numeric(Y)) {
    # Calculate using weights if provided
    # determine easier way to state this
    if (is.null(weights) == FALSE) {
      Weight_give <- 1 / (weights)
      pred <- weighted.mean(Y, Weight_give)
      # If not, weights are provided calculate the standard way
    } else {
      pred <- mean(Y)
    }
  }
  return(pred)
}
