#' Cos_Distance function
#'
#' @param X n x m matrix
#' @param v 1 x m vector
#'
#' @return column matrix of the (Cosine Similarity) Distances calculated between the rows of X and the vector v
#' @export
#'
#' @examples
#' X = matrix(c(1,1,0,1,1,0), nrow = 2, byrow = FALSE)
#' v = c(0,0,1)
#' Cos_Distance(X,v)
#' # Returns the following:
#' # [0.2928932, 1.0000000]'
#'
Cos_Distance = function(X,v){
  #Calculate the distance between the rows of X and the vector v
  if (ncol(X) != length(v)){
    stop('The number of rows of X needs to be equal to the length of v')
  }else{
  #Call the Cos_Distance_c function to calculate the distance
  Cos_dist_vec <- Cos_Distance_c(X,v)
  }
  return(Cos_dist_vec)
}
