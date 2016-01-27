
#Transitional Global matrix reference variable
cache_m <- NULL


#################################################################
#
# Function: cachemean
# Author: Bill Woods
# Date: Sun 24, 2016
#
# Description:
#        This function computes the inverse of the special
#        "matrix" returned by `makeCacheMatrix` above. If 
#         the inverse has already been calculated (and the 
#         matrix has not changed), then`cacheSolve` should 
#         retrieve the inverse from the cache.
#
# Arguments: 
#        The special cached matrix object created by makeCachMatrix()
#        
# Return:
#        Returns the inverse
#
#################################################################

cacheSolve <- function(m) {
    #If cache value is available, and the matrix has not
    #been modified then return the cached matirx
    #solve(m) %*% m == diag(nrow = nrow(m), ncol = ncol(m))
    #attr(m,"cached_inv") %*% m will provide the identity matrix
    #if the matrix m has been changed or this is the first time
    #diag(nrow = nrow(m), ncol = ncol(m)) provides what the identity matrix
    #should be, when compared together and if true then the cached matrix
    #may be provided.
    #
    if ( !is.na(attr(m,"cached_inv")[1,1])) {
    #if( (attr(m,"cached_inv") %*% m) == diag(nrow = nrow(m), ncol = ncol(m))) {
      message("Returning cached value")
      return(attr(m,"cached_inv"))
    }
      else
    { 
      #If this is a first time for the inv then calculate 
      #and cache it
      #Return it as a new cacheable matrix obeject
      m <<- m
      cache_m <- solve(m)
      attr(m,"cached_inv") <<- cache_m
      message("Returning NEW non-cached value")
      return(cache_m)
    }
    

}
