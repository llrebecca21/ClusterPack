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
      #Calculate using weights if provided
      #If not weights are provided calculate the standard way

  #If no prediction is given, give a warning
}












