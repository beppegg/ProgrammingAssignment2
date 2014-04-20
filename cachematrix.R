
###############################
##                           ##
## PLEASE READ THE README.MD ##
##                           ##
###############################

## This functions supports caching of inverse operation for matrices.
## You first have to activate the caching support by converting
## the standard matrix in a cache-enabled one by using the
## makeCacheMatrix function; then you can apply the "cacheSolve"
## function for getting the inverse of the matrix from the cache, if
## there's a pre-calculated value.

## Activates support for caching to "x" matrix.
makeCacheMatrix <- function(x = matrix()) {
  cached <- NULL
  
  get <- function() {
    x
  }
  
  set.inverse <- function(inverse) {
    cached <<- inverse
  }
  
  get.inverse <- function() {
    cached
  }
  
  list(get = get,
       set.inverse = set.inverse,
       get.inverse = get.inverse)
}


## Solves a matrix and cache the result, in order to retrieve and reuse it later
## it later
cacheSolve <- function(x, ...) {
  inverse <- x$get.inverse()
  if(is.null(inverse)) {
    inverse <- solve(x$get(), ...)
    x$set.inverse(inverse)
  }
  inverse
}
