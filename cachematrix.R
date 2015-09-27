## The function nakeCacheMatrix will create an object which will store the list of functions for given input
## The function CacheRolve will calculate and give the Inverse of input matrix which is inversible. 
## The inverse will be displayed from computation(always the first time) or cache(if inverse exists and is not NULL)
## Inverse will be computed for Unique matrices input
## Inverse will be read from Cache for simmilar matrice input

## makeCacheMatrix function will take input as a matrix which can be cached. Default is an empty matrix(0x0)

makeCacheMatrix <- function(x = matrix()) {
inverse<<- NULL
set<- function(y){ x<<- y  ## set the value of x as new value (whihc is y)
                   
inverse<<- NULL}

  get<- function() x
setinverse<- function(solve) inverse<<- solve
getinverse<- function() inverse
final<- list(set = set, get = get, setinverse= setinverse, getinverse = getinverse)
final
}

## This function will produce the result of input x matrix depending on the input is already been computed or unique.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  result<- makeCacheMatrix(x)
  z<- result$getinverse()
 if(!is.null(z)) {  message("getting cached data")
 return(z)
 }
 else
   z<- result$get()
 inverse<- solve(z, ...)
 result$setinverse(inverse)
 inverse
}



