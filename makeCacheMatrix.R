#################################################################
#
# Function: cachedMatrix
# Author: Bill Woods
# Date: Sun 24, 2016
#
# Description:
#        This function creates a special "matrix" object 
#        that returns the resulting matrix having the ability
#        to cache it's own inverse
#
# Arguments: 
#        All arguments used by the function matrix() may
#        Be used in the exact same way.
# Return:
#        Returns a special matrix that can casche it's own inverse
#
# Note: In practice there should be a means to perform cleanup
# of any objects created and used in this and its companion function
# cacheSolve(), once no longer needed.
# i.e it's own GC.
#################################################################

makeCacheMatrix <- function(...) {
    #First Create a typical matrix, to be returned
    m <- matrix(...)
  
    #Add a cached matrix attribute
    attr(m,"cached_inv") <- matrix()
    
    mm <<- m
#    return(m)
    return(mm)
}


