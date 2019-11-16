
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  place <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  placeInverse <- function() inv <<- solve(x) #calculate the inverse matrix
  getInverse <- function() inv
  list(place = place,
       get = get,
       placeInverse = placeInverse,
       getInverse = getInverse)
}