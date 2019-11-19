##Start of function
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
