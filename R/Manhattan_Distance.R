#' Manhattan_Distance function
#'
#' @param X n x p matrix
#' @param v 1 x p vector
#'
#' @return column vector of (Manhattan) Distances calculated between the rows of X and vector v
#' @export
#'
#' @examples
Manhattan_Distance <- function(X,v){
  # Check that the length of the vectors v1 and v2 are the same length
  if (nrows(X) != length(v)){
    stop('The number of rows of X needs to be equal to the length of v')
  }else{
    # Calculate Manhattan Distance between two vectors:
    # \sum(|a-b|)
    man_dist_vec <- Manhattan_Distance_c(X,v)
  }
  return(man_dist_vec)
}
