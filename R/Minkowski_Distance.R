Minkowski_distance <- function(v1,v2,p){
  #Check that the p value is a viable input (greater than zero)
  if(p <= 0){
    stop('p must be greater than zero')

  }if(length(v1) != length(v2)){
    stop('The length of the vectors need to be equal')
  }if(p == Inf){
    #Calculate Sup-norm
    return(max(abs(a-b)))
  }else{
    #Calculate Minkowski distance between the two vectors
    # \sum(|a-b|^p)^(1/p)
    Mink_dist_vec <- sum(abs(a-b)^p)^(1/p)
  }
  return(Mink_dist_vec)
}














