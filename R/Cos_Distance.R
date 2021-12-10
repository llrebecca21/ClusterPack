#' Cos_Distance function
#'
#' @param X n x m matrix
#' @param v 1 x m vector
#'
#' @return vector of (Cosine Similarity) Distances calculated between the rows of X and the vector v
#' @export
#'
#' @examples
#' X = matrix(c(1,1,0,1,1,0), nrow = 2, byrow = FALSE)
#' v = c(0,0,1)
#' Cos_Distance(X,v)
Cos_Distance = function(X,v){
  #Calculate the distance between the rows of X and the vector v
  #Call the Cos_Distance_c function to calculate the distance
  Cos_dist_vec <- Cos_Distance_c(X,v)

  return(Cos_dist_vec)
}
