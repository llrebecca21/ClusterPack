#' Manhattan_Distance function
#'
#' @param X n x m matrix
#' @param v 1 x m vector
#'
#' @return column vector of (Manhattan) Distances calculated between the rows of X and vector v
#' @export
#'
#' @examples
#' set.seed(101)
#' X = matrix(c(1,17,19,21,1,0), nrow = 2)
#' v = c(10,15,3)
#' Manhattan_Distance(X,v)
Manhattan_Distance <- function(X,v){
  # Check that the length of the vectors v1 and v2 are the same length
  if (nrow(X) != length(v)){
    stop('The number of rows of X needs to be equal to the length of v')
  }else{
    # Calculate Manhattan Distance between the rows of X and the vector v:
    # \sum(|a-b|)
    man_dist_vec = Manhattan_Distance_c(X,v)
  }
  return(man_dist_vec)
}
