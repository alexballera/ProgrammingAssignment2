## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function( m = matrix() ) {
    
    ## Initialize inverse
    inverse <- NULL
    
    ## Function: set the matrix
    set <- function( matrix ) {
        matrix <<- matrix
        inverse <<- NULL
    }
    
    ## Function: get the matrix
    get <- function()  matrix
    
    ## Function: set the inverse of the matrix
    setInverse <- function(inverse)  inverse <<- inverse
    
    ## Function: get the inverse of the matrix
    getInverse <- function()  inverse
    
    ## List of the functions
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return the inverse of 'x'
    matrix <- x$getInverse()
    
    if( !is.null(m) ) {
        message("getting cached data")
        return(matrix)
    }
    
    ## Get the matrix of "x"
    data <- x$get()
    
    matrix <- solve(data) %*% data
    
    x$setInverse(matrix)
    
    matrix
}
