

Man_distance <- function(v1,v2){
  # Check that the length of the vectors v1 and v2 are the same length
  if (length(v1) != length(v2)){
    stop('Length of the vectors needs to be equal')
  }else{
    # Calculate Manhattan Distance between two vectors:
    # \sum(|a-b|)
    man_dist_vec <- sum(abs(a-b))
  }return(man_dist_vec)
}

















