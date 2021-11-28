Prediction_NN <- function(X,Y, weights = NULL){
  #Make sure X is a matrix
  X <- as.matrix(X)
  #If X[, Y] is a factor type:
  if(is.factor(X[ ,Y])){
    group <- table(X[ ,Y])
    pred <- names(group[group == max(group)])
  }
  #If X[, Y] is a character type:
  if(is.character(X[ ,Y])){
    group <- table(X[ ,Y])
    pred <- names(group[group == max(group)])
  }
  #If X[, Y] is a numeric type:
  if(is.numeric(X[ ,Y])){
    #Calculate using weights if provided
    #determine easier way to state this
    if(is.null(weights) == FALSE){
      Weight_give <- 1 / (weights * sum(weights))
      pred <- weighted.mean(X[ ,Y], Weight_give)
      #If not weights are provided calculate the standard way
    } else{
      pred <- mean(X[ ,Y])
    }
  }


  #If no prediction is given, give a warning
  return(pred)
}












