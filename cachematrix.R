## Put comments here that give an overall description of what your
## functions do
# functions to create a matrix object an cache its inverse.
## Write a short comment describing this function
# cerates the object to cache its inverse
makeCacheMatrix <- function(x = matrix()) 
  {
    m <- NULL
    set <- function(y) 
      {
        x <<- y
        m <<- NULL
      }
    get <- function() x
    setmatrix <- function(matrix) m <<- matrix
    getmatrix <- function() m
    list(set = set, get = get,
         setmatrix = setmatrix,
         getmatrix = getmatrix)
  }


## Write a short comment describing this function
#computes the inverse of the matrix.
cacheSolve <- function(x, ...) 
  {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getmatrix()
    if(!is.null(m)) 
      {
      message("getting cached data")
      return(m)
      }
    data <- x$get()
    m <- solve(data)
    x$setmatrix(m)
    m
  }
