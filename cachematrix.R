## Put comments here that give an overall description of what your
## functions do
## The function makeCacheMatrix takes a matrix and returns 
## a special matrix and also it stores the inverse of the matrix 
## in cache 

makeCacheMatrix <- function(x = matrix()) {
        m_inv <- NULL
        set <- function(y){
                x <<- y
                m_inv <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m_inv <<- solve
        getinv <- function() m_inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}

## caheSolve takes the output matrix of the makeCacheMatrix
## and returns the inverse matrix. However, first it checks
## to see if the inversed matrix is already saved in cache and 
## if so it returns the saved one instead of computing
## it again which saves computing resourses and time 


cacheSolve <- function(x, ...) {
        m_inv <- x$getinv()
        if(!is.null(m_inv)){
                message("getting cached data")
                return(m_inv)
        }
        data <- x$get()
        m_inv <- solve(data,...)
        x$setinv(m_inv)
        m_inv
}
makeCacheMatrix <- function(x = matrix()) {

}


