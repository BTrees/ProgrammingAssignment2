#################################################################
#
# Function: makeCacheMatrix
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
#        Be used in the exact same way as a typical matrix.
#
# Return:
#        Returns a special matrix 'm' that can cache it's own inverse
# 
#################################################################


makeCacheMatrix <- function(...) {
    #First Create a typical matrix, to be returned
    m <- matrix(...)  
    #Set cached inverted value to NULL initially
    attr(m,"cached_inverse") <- matrix()
    
    return(m)
}


