## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

## This function creates a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {##defines the default value of x as a matrix
     inv <- NULL                           ##inv is set to NULL in the parent env.
     set <- function(y) {                  ##defines the set function in order to                                                                    
              x <<- y                      ##set the value of x and          
     inv <<- NULL                          ##NULL the value of inv in the parent env.
    }
     get <- function() x               ##gets the x value retrived from the parent env.
     setinverse<-function(my_inv) inv<<-my_inv ##assigns "my_inv" to the value of inv 
     getinverse<-function() inv               ##gets the value of inv from the parent env.
     list(set = set,                          ##assigns each of the functions above as an 
          get = get,                          ##element within a list()and names them to  
          setinverse = setinverse,            ##use the $ form of the extract operator  
          getinverse = getinverse)             
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## This function computes the inverse of the matrix returned by makeCacheMatrix.
cacheSolve <- function(x, ...) {
       inv <- x$getinverse()
       if(!is.null(inv)) {                     ##if the inverse has already been 
               message("getting cached data")  ##calculated and the matrix is the same 
               return(inv)                     ##it will retrieve the inverse 
       }                                       ##from the cache    
       data <- x$get()
       inv <- solve(data, ...)
       x$setinverse(inv)
       inv
}

