library(plumber)

#* @get /fridge
function() {
  list(milk = 2, eggs = 12, cheese = 1)
}

#* @get /shopping-list
function() {
  list(bread = 2, butter = 1, eggs = 6)
}

pr <- plumber::plumb("/usr/local/src/API.R")
pr$run(host = "0.0.0.0", port = 8080)
