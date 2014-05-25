cacheSolve <- function(x, ...) {
    # uses the getcache method from the makeCacheMatrix and attributes it to m
    m <- x$getcache()
    # if the getcache is not null returns the cached data
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    # else do it from scratch
    data <- x$get()
    # calculates the inverse
    m <- solve(data, ...)
    # puts it into cache
    x$setcache(m)
    m
}