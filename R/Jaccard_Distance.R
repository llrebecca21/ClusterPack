#' Jaccard Distance function
#'
#' @param X n x m matrix
#' @param y 1 x m vector
#'
#' @return 1 x m vector of (Jaccard coefficient) distances between rows of X and vector y
#' @export
#'
#' @examples
Jaccard_Distance <- function(X, y){
  #Need to obtain the length of the row of X
  A <- length(X[1, ])
  B <- length(y)
  inter_Xy <- length(intersect(X,y))
  un_Xy <- A + B - lint_Xy
  return(inter_Xy/un_Xy)
}





