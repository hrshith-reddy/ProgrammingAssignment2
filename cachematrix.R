## Put comments here that give an overall description of what your
## functions do
##makeCacheMatrix creates a cached copy of matrix
##cacheSolve solves the cached matrix

## Write a short comment describing this function
##makeCacheMatrix creates a cached copy of matrix

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    inverse<<- NULL
  }
  get <- function() x
  
  setinverse <- function(solve) i <<-solve
  
  getinverse <- function() i
  
  list(set = set, get = get,
       
       setinverse = setinverse,
       
       getinverse = getinverse)

}


## Write a short comment describing this function

##cacheSolve solves the cached matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  
  if(!is.null(i)) {
    
    message("getting cached data")
    
    return(i)
  }
  
  data <- x$get()
  
  i <- solve(data, ...)
  
  x$setinverse(i)
  
  i      
}
