### Exercise 5 ###
library(jsonlite)
library(dplyr)

# Write a function that allows you to specify a movie, then does the following:
  
  # Replace all of the spaces in your movie title with plus signs (+)
key <- "ce993e6f16de47e49783d52ef7969c41"
base <- "https://api.nytimes.com/svc/movies/v2/reviews/search.json?"

foobar <- function(movie) {
  movie.no.space <- gsub(" ", "+", movie)
  request <- paste0(base, "query=", movie.no.space, "&api-key=", key)
  movie.info <- fromJSON(request)
}

abc <- as.data.frame(foobar("Finding Nemo"))

  # Construct a search query using YOUR api key
  # The base URL is https://api.nytimes.com/svc/movies/v2/reviews/search.json?
  # See the interactive console for more detail:https://developer.nytimes.com/movie_reviews_v2.json#/Console/GET/reviews/search.json
  
  
  # Request data using your search query
  
  
  # What type of variable does this return?
  
  # Flatten the data stored in the `$results` key of the data returned to you
  flatten(abc$results)
  
  # From the most recent review, store the headline, short summary, and link to full article each in their own variables
  
  
  # Return an list of the three pieces of information from above
  

# Test that your function works with a movie of your choice

