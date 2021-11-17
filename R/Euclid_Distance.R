#' Euclid_Distance function
#'
#' @param dataf A numeric dataframe or a matrix of dimension n x p. Assuming last column of dataframe is classifying vector
#'
#' @return
#' @export
#'
#' @examples
Euclid_Distance <- function(dataf){
  #Compute the Euclidean Distance of a Matrix
  #Calculates by calculating the distance between the first row and each row in the matrix

  #Initialize dimensions of the dataframe
  #dataframe is an n x p matrix after turning into matrix form
  n <- nrow(dataf)
  p <- ncol(dataf)

  #Initialize vector that will store the distances
  dist_Euc <- rep(0,n)

  #Run for loop over the rows and calculate the distance
  for(i in 1:n){
    dist_Euc[i] <- sqrt(sum((dataf[1,] - dataf[i,])^2))
  }
  #Return Euclidean Distance vector
  return(dist_Euc)
}
