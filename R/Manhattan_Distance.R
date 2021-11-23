#' Manhattan_distance function
#'
#' @param v1 vector of length 1 x p
#' @param v2 vector of length 1 x p
#'
#' @return vector of length 1 x 1 that computes the distance between v1 and v2
#' @export
#'
#' @examples
Manhattan_distance <- function(v1,v2){
  # Check that the length of the vectors v1 and v2 are the same length
  if (length(v1) != length(v2)){
    stop('Length of the vectors needs to be equal')
  }else{
    # Calculate Manhattan Distance between two vectors:
    # \sum(|a-b|)
    man_dist_vec <- sum(abs(a-b))
  }
  return(man_dist_vec)
}

















