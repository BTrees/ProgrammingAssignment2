
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
    #If cache is not null then return inverse
    if ( !is.na(attr(m,"cached_inv"))) {
      message("Returning cached value")
      return(attr(m,"cached_inv"))
    }
      else
    {
      #If this is a first time for the inv then calculate 
      #and cache it
      cache_m <- solve(m)
      attr(cache_m,"cached_inv") <- inv
      message("Returning NEW non-cached value")
      return(cache_m)
    }
    

}
