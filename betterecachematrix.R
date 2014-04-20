## Enables a matrix to cache its "solve" method
## if you wanna get the inverse of this matrix,
## retrieving a cached value if it exists, simply
## call "get.inverse" on this matrix.
inverseCachingMatrix <- function(x = matrix()) {
  cached <- NULL
  
  get <- function() {
    x
  }
  
  get.inverse <- function(...) {
    if (is.null(cached)) {
      cached <<- solve(x, ...);
    }
    cached
  }
  
  clear.inverse <- function() {
    cached <<- null
  }
  
  list(get = get,
       get.inverse = get.inverse)
}