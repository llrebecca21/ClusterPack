#' Manhattan_Distance function
#'
#' @param X
#' @param v
#'
#' @return
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
    man_dist_vec <- sum(abs(v1-v2))
  }
  return(man_dist_vec)
}
