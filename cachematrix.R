##Start 1st of function
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL ##1st data 
  place <- function(y) {
    x <<- y ##association for loop
    inv <<- NULL
  }
  get <- function() x
  placeInverse <- function() inv <<- solve(x) ##calculates the inverse matrix
  getInverse <- function() inv
  list(place = place,
       get = get,
       placeInverse = placeInverse,
       getInverse = getInverse)
}
##Finish 1st function

##Start 2nd function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("returning cached data")
    return(m)
  }
  data <- x$get()
  minv <- solve(data, ...)
  x$setinv(minv)
  m
}
##End 2nd funtion
