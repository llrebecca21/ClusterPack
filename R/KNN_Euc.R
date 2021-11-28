#' KNN_Euc function
#'
#' @param X
#' @param observation
#' @param K
#'
#' @return
#' @export
#'
#' @examples
KNN_Euc <- function(X_test ,X_pred, Y, K, pred_weights = FALSE){
  #X_test:
  #X_pred:
  #Y : observations

  #Do any extra compatibility checks

  #Initialize a prediction vector and any other variables before for loop
  m = nrow(X_pred)
  predict_vec <- c()
  y_index <- which(colnames(X_pred) == Y)
  X = X_test[ ,-y_index]

  #Create for loop to calculate the predictions by calculating nearest neighbors
  for(i in 1:m){

    #Calculate distances and nearest neighbors by calling Nearest_Neighbors function

    nearest <- Nearest_Neighbors(X, X_pred[i, -y_index], K)

    # Calculate predictions by calling Prediction_NN function
    predictions <-


  }

}
