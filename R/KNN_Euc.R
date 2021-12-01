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
KNN_Euc <- function(X_test ,X_pred, Y, K, pred_weights = FALSE){

  #Do any extra compatibility checks

  #Initialize a prediction vector and any other variables before for loop
  m = nrow(X_pred)
  predict_vec <- c()
  y_index <- which(colnames(X_pred) == Y)
  X = X_test[ ,-y_index]
  print(X)

  #Create for loop to calculate the predictions by calculating nearest neighbors
  for(i in 1:m){

    #Calculate distances and nearest neighbors by calling Nearest_Neighbors function
    #Nearest_Neighbors returns a list with distances and index_of_neighbors
    nearest <- Nearest_Neighbors(X = X, observation = X_pred[i, -y_index], K = K)

    # Calculate predictions by calling Prediction_NN function
    if(pred_weights == TRUE){
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], ], Y = Y, weights = nearest[[2]])
    }else{
      predict_vec[i] <- Prediction_NN(X = X_test[nearest[[1]], ], Y = Y)
    }
  }
  return(predict_vec)
}
