
#Transitional Global matrix reference variable
cache_m <- NULL


#################################################################
#
# Function: cacheSolve
# Author: Bill Woods
# Date: Sun 24, 2016
#
# Description:
#        This function computes the inverse of the special
#        "matrix" returned by `makeCacheMatrix` above. If 
#         the inverse has already been calculated then`cacheSolve
#         should retrieve the inverse from the cache.
#
# Arguments: 
#        The special cached matrix object created by makeCachMatrix()
#        
# Return:
#        Returns the inverse
#
#################################################################

cacheSolve <- function(m) {

      #If special matrix attribute is not null, return cache value
      if ( !is.null(attr(m,"cached_inv"))) {
      message("Returning cached values")
      return(attr(m,"cached_inv"))
    }
      else
    { 
      #If this is a first time for the inv then calculate 
      #and cache it in the cache list
      #Return the matrix as a new cacheable object
      cache_m <- solve(m)
      #Add the inverse matrix within the matrix as an attribute
      attr(m,"cached_inv") <- cache_m
      #Since this is the first time, id# will be current list length + 1
      #attr(m,"cache_list_id") <- length(cacheMatrixList) + 1
      #Add this matrix to list
      #cacheMatrixList[attr(m,"cache_list_id")] <<- cache_m
      message("Returning NEW (non-cached) values")
      return(cache_m)
    }
    

}
