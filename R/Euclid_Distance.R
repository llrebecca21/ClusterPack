#' Euclidean Distance
#'
#' @param v1
#' @param v2
#'
#' @return
#' @export
#'
#' @examples
Euclid_Distance <- function(X, v){
  #Check for same length of the vectors
  #print(str(v1))
  #print((v2))
  if(ncol(X)!= length(v)){
    stop("The vectors are not of the same length")
  }else{
    dist_Euc <- Euclid_Distance_c(X,v)
    #dist_Euc <- sqrt(sum((v1-v2)^2))
  }
  return(dist_Euc)
}
