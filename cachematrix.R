## Set input x as matrix and then solved with solve function instead of mean function following example.


makeCacheMatrix <- function(x = matrix()) {
 m <- NULL
 set <- function(y = matrix()){
   x <<- y
   m <<- NULL
 }
 get <- function() x
 setSolve <- function(inverse) m <<- inverse
 getSolve <- function() m
 list(set = set, get = get, setSolve = setSolve, getSolve = getSolve)
}


## solve function give inverse of matrix for squared matrix.Changed mean to solve

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getSolve()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setSolve(m)
  m
}
