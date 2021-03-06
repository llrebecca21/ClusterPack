#' Manhattan_Distance function
#'
#' @param X n x m matrix
#' @param v 1 x m vector
#'
#' @return column matrix of (Manhattan) Distances calculated between the rows of X and vector v
#' @export
#'
#' @examples
#' X = matrix(c(1,17,19,21,1,0), nrow = 2)
#' v = c(10,15,3)
#' Manhattan_Distance(X,v)
#' # returns the following:
#' # [15,16]'
#'
Manhattan_Distance <- function(X,v){
  # Check that the number of columns of X and the length of v is equal
  if (ncol(X) != length(v)){
    stop('The number of rows of X needs to be equal to the length of v')
  }else{
    # Calculate Manhattan Distance between the rows of X and the vector v:
    # \sum(|a-b|)
    man_dist_vec = Manhattan_Distance_c(X,v)
  }
  return(man_dist_vec)
}
