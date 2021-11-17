#' Euclid_Distance function
#'
#' @param mat_d n x p matrix that the Euclidean Distance will be run on
#'
#' @return
#' @export
#'
#' @examples
Euclid_Distance <- function(mat_d){
  #Compute the Euclidean Distance of a Matrix
  #Calculates by calculating the distance between the first row and each row in the matrix

  #Initialize dimensions of the dataframe
  #dataframe is an n x p matrix after turning into matrix form
  n <- nrow(mat_d)
  p <- ncol(mat_d)

  #Initialize vector that will store the distances
  dist_Euc <- rep(0,n)

  #Run for loop over the rows and calculate the distance
  for(i in 1:n){
    dist_Euc[i] <- sqrt(sum((mat_d[1,] - mat_d[i,])^2))
  }
  #Return Euclidean Distance vector
  return(dist_Euc)
}
