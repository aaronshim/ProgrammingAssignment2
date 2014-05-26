## Put comments here that give an overall description of what your
## functions do

## This is a list containing functions to set and get the
## value of the matrix and also get and set the cached
## inverse of this matrix.

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  
}

## Returns cached inverse if there is one
## otherwise calculate the inverse, cache it
## and return the right result too!

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setmean(m)
  m   
}
