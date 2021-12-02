Prediction_NN <- function(X,Y, weights = NULL){

  # Description of inputs:
  # X = X_test[nearest[[1]]
  # Y = Y_test

  #If Y is a factor type:
  if(is.factor(Y) | is.character(Y)){
    group <- table(Y)
    pred <- names(group[group == max(group)])[1]
  }

  #If Y is a numeric type:
  if(is.numeric(Y)){
    #Calculate using weights if provided
    #determine easier way to state this
    if(is.null(weights) == FALSE){
      Weight_give <- 1 / (weights)
      pred <- weighted.mean(Y, Weight_give)
      #If not, weights are provided calculate the standard way
    } else{
      pred <- mean(Y)
    }
  }


  #If no prediction is given, give a warning
  return(pred)
}
