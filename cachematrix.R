## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setmat <- function(y) {
    x <<- y
    m <<- NULL
  }
  ## all functions 
  getmat <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(setmat = setmat, getmat = getmat, setinv = setinv,
       getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data...Please Standby...")
    return(m)
  }else{
    ## Final step of SOLVE
    m <- solve(x$getmat())
    x$setinv(m)
    ## Return the values
    return(m)
  }
}
