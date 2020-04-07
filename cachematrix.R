## makeCacheMatrix takes a blank matrix as an argument. It sets mat2 to null. 
## Initialize x as an empty matrix and intialize mat2 as NULL
## Function "set" assigns y to x and mat2 to null in cases mat isn't null.
## Function "get" retuns x 
## Function setinverse takes inverse as an argument and caches the inverse to mat2
## Function getinverse retrieves the inverse 
## cacheSolve takes x as an argument and returns the inverse of x 
## or calculates it if it isn't cached

## Takes a matrix as an arguments and caches the inverse of the matrix.
makeCacheMatrix <- function(x = matrix()) {
  mat2 <- NULL
  set <- function(y) {
    x <<- y
    mat2 <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) mat2 <<- inverse
  getinverse <- function() mat2
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Checks if the inverse is cached. If not, it calculates the inverse of x.
cacheSolve <- function(x , ...) {
  mat2 <- x$getinverse()
  if(!is.null(mat2)) {
    return(m)
  }
  data <- x$get()
  mat2 <- solve(data, ...)
  x$setinverse(mat2)
  mat2
}