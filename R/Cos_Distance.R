Cos_Distance = function(X,v){
  numerator <- colSums(t(X) * v)
  denominator <- sqrt(rowSums(X * X) * sum(b*b))
  return(1 - (numerator/denominator))
}
