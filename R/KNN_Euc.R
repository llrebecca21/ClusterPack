#' KNN_Euc function
#'
#' @param X_test
#' @param X_pred
#' @param Y
#' @param K
#' @param pred_weights
#'
#' @return
#' @export
#'
#' @examples
KNN_Euc <- function(X_test ,X_pred, Y_test, Y_pred, K, pred_weights = FALSE){

  #Do any extra compatibility checks
  X_test <- as.matrix(X_test)
  Y_test <- as.vector(Y_test)

  X_pred <- as.matrix(X_pred)
  Y_pred <- as.vector(Y_pred)

  #compatibility checks for dimensionality
  if(nrows(X_test) != length(Y_test)){
    stop("The number of rows of X_test does not match the length of Y_test")
  }

  if(nrows(X_pred) != length(Y_pred)){
    stop("The number of rows of X_pred does not match the length of Y_pred")
  }

  if(ncol(X_test) != ncol(X_pred)){
    stop("The number of columns of X_test and X_pred are not equal")
  }
  #Initialize a prediction vector and any other variables before for loop
  m = nrow(X_pred)
  predict_vec <- c()

  #Create for loop to calculate the predictions by calculating nearest neighbors
  for(i in 1:m){

    #Calculate distances and nearest neighbors by calling Nearest_Neighbors function
    #Nearest_Neighbors returns a list with distances and index_of_neighbors
    nearest <- Nearest_Neighbors(X = X_test, observation = X_pred[i, ], K = K)

    # Calculate predictions by calling Prediction_NN function
    if(pred_weights == TRUE){
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], ], Y = Y_test, weights = nearest[[2]])
    }else{
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], ], Y = Y_test)
    }
  }
  return(predict_vec)
}
