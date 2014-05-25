makeCacheMatrix <- function(x) {
    # reset cache
    inverse <- NULL
    # method to be called after object is instantiated or to change it's matrix
    set <- function(y) {
        x <<- y
        inverse <<- NULL
    }
    # returns the stored matrix
    get <- function() x
    # saves inverse matrix on internal variable to be used as cache
    setcache <- function(solve) inverse <<- solve
    # returns the cache
    getcache <- function() inverse
    # describe the methods if called directly without attributing to variable
    list(set = set, get = get,
         setcache = setcache,
         getcache = getcache)
}