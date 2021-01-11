## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inverse <- NULL
	set <- function(y){
		x <<- y
		inverse <<- NULL
	}
	get <- function() {x}
	setInv <- function(inv) {inverse <<- inv}
	getInv <- function() {inverse}
	list(set = set,
	     get = get,
	     setInv = setInv,
	     getInv = getInv)
		
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	inverse <- x$getInv()
	if(!is.null(inverse)) {
		message("getting cached data")
		return(inverese)
	}
	data <- x$get()
	inverese <- solve(data, ...)
	x$setInv(inverese)
	inverese
}
