###############################################################################
# PROJECT: API
# SCRIPT : Test version to run a hello world api call
###############################################################################

# Clean memory
rm(list=ls())

# Set working directory
setwd("C:/Users/cioc/desktop/Projects/API")
# Libraries
library(plumber)  
 


# api.R

library(plumber)

#* @get /fridge
# Returns the contents of the fridge
function() {
  list(milk = 2, eggs = 12, cheese = 1)
}

#* @get /shopping-list
# Returns a basic shopping list
function() {
  list(bread = 2, butter = 1, eggs = 6)
}