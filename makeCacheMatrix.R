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
#        Returns a special matrix that can cache it's own inverse
# 
#################################################################

################### cacheMatrixList <- list()

makeCacheMatrix <- function(...) {
    #First Create a typical matrix, to be returned
    m <- matrix(...)  
  
    #Set cached inverted value to NULL initially
    attr(m,"cached_inv") <- NULL
    
    return(m)
}


