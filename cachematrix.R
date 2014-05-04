## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Have a cache object that can be set/got

makeCacheMatrix <- function(x = matrix()) {
   x <- NULL
   set <- function(y) {
      x << y
      i << NULL
   }
   get <- function() x
   setcached <- function(c) i << c
   getcached <- function() c
   list(set = set, get = get, setcached = setcached, getcached = getcached)   
}


## Write a short comment describing this function
## Get the inverse matrix from cached if it has been calculated; otherwise re-calculate

cacheSolve <- function(x, ...) {
   ## Return a matrix that is the inverse of 'x'
   i <- x$getcached()
   if (!is.null(i))  {
      message("getting cached data")
      return (i)
   }
   data <- x$get()
   i <- solve(data)
   x$setcached(i)
}