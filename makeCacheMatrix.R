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
#################################################################


makeCacheMatrix <- function(...) {
    #Create a normal matrix
    m <- matrix(...)
  
    #Add a cached matrix attribute
    attr(m,"cached_inv") <- matrix()
    
    return(m)
        
}
