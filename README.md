# ClusterPack
### What is in ClusterPack:
Clusterpack contains the function KNN_Euc for KNN (K-Nearest Neighbors) algorithm with options for calculating distance (Euclidean, Manhattan, Minkowski, and Cosine-Similarity) all distance functions are optimized in C++. All of these distance functions are available to the user. The package also contains the KMEANS_Euc function to run the K-Means algorithm that is optimized in C++. 


### Installation Instructions
run the following code in your RStudio console:
```{r}
devtools::install_github("llrebecca21/ClusterPack")
```

### Getting Started Examples
The following functions are contained in the ClusterPack package:

### KNN_Euc
` KNN_Euc(X_test, X_pred, Y_test, K, method = c("Euc", "Man", "Min", "Cos"), pred_weights = FALSE, p = NULL)`  
This function runs the K-Nearest Neighbors algorithm with the option of choosing from the following distance functions for calculating the K-nearest neighbors: 
Euclidean, Manhattan, Minkowski, or Cosine-Similarity. (Default: Euclidean)
For more info on function arguments call `?KNN_Euc` in the console. This function has been optimized in C++.

#### Sample KNN_Euc Code
```{r} 
 set.seed(1234)
 n_fit = 10
 train_ind = sample(1:nrow(iris),n_fit)
 X_test = iris[-train_ind, -ncol(iris)]
 X_pred = iris[train_ind, -ncol(iris)]

 Y_test = iris[-train_ind, ncol(iris)]

 print(KNN_Euc(X_test = X_test, X_pred = X_pred, Y_test = Y_test, K = 5))
```

### KMEANS_Euc
` KMEANS_Euc(X, K, M = NULL, numIter = 100)`
KMEANS_Euc runs the Kmeans (Lloyd's) algorithm. The Lloyd's version of the Kmeans algorithm calculates the distances by using the Euclidean distance. This function is optimized for speed in C++. For more information on the function arguments call `?KMEANS_Euc` in the console.

#### Sample KMEANS_Euc Code

```{r}
X = matrix(c(1,  2,  3,
              0,  1,  2,
              9, 10, 11,
             10, 11, 12),
            nrow = 4,
            ncol = 3,
            byrow = TRUE)
K = 2
print(KMEANS_Euc(X=X,K=K,M=NULL,numIter = 100))
```

### Euclid_Distance

`Euclid_Distance(X,v)`

This function calculates the Euclidean distance between the rows of a matrix `X` and a vector `v`. For more information on `X` and `v` call `?Euclid_Distance` in the console. Calculation optimized in C++.

#### Sample Euclid_Distance Code

```{r}
 X = matrix(c(17, 40, 20, 39, 30.1, 55.5), nrow = 2)
 v = c(10.2, 30, 45)
 print(Euclid_Distance(X,v))
```
  
### Manhattan_Distance

`Manhattan_Distance(X,v)`

This function calculates the Manhattan distance between the rows of a matrix `X` and a vector `v`. For more information on `X` and `v` call `?Manhattan_Distance` in the console Calculation optimized in C++.

#### Sample Manhattan_Distance Code

```{r}
X = matrix(c(1, 17, 19, 21, 1, 0), nrow = 2)
v = c(10, 15, 3)
print(Manhattan_Distance(X,v))
```


### Minkowski_Distance
` Minkowski_Distance(X,v,p)`
This function calculates the Minkowski Distance between the rows of a matrix `X` and a vector `v`. For more information on `X` and `v` call `?Minkowski_Distance` in the console. Calculation optimized in C++.

Note: `p` can take either positive integer value or infinity. If infinity is provided it is assumed the user is wanting to compute distance by using Sup Norm. If `p = 1` this is equivalent to calculating the Manhattan Distance. If `p = 2` this is equivalent to calculating the Euclidean Distance.

#### Sample Minkowski_Distance Code

```{r}
X = matrix(c(1,2,3,4,5,6), nrow = 3)
v = c(10,3)
p = Inf
print(Minkowski_Distance(X, v, p))
```

### Cos_Distance

`Cos_Distance(X,v)`
This function calculates the Cosine-Similarity distance between the rows of a matrix `X` and a vector `v`.   
Note: In order for this distance function to work properly the user must ensure their inputs are converted to angular distance.

#### Sample Cos_Distance Code

```{r}
 X = matrix(c(1,1,0,1,1,0), nrow = 2, byrow = FALSE)
 v = c(0,0,1)
 print(Cos_Distance(X,v))
```
