## NEON workshop DAY 1 ##
#########################
## Nov 8, 2018
# Accessing NEON API
# Tutorial also available at https://www.neonscience.org/neon-api-usage

# Getting set up
# Uncomment these to install packages if you don't have them!
# install.packages("httr")
# install.packages("jsonlite")
# install.packages("downloader")
library(httr)
library(jsonlite)
library(downloader)

# writing an API request
req <- httr::GET("http://data.neonscience.org/api/v0/products/DP1.10003.001")
req

req.content <- httr::content(req, as="parsed")
req.content

req.text <- content(req, as="text")

available<-fromJSON(req.text, simplifyDataFrame=T, flatten=T)
available

available$data$siteCodes

# identifying where bird data is available
bird.urls <- unlist(available$data$siteCodes$availableDataUrls)
bird.urls

# get data availability for WOOD July 2015
brd <- httr::GET(bird.urls[grep("WOOD/2015-07", bird.urls)])
brd.files <- fromJSON(content(brd, as="text"))

# view just the available data files
brd.files$data$files
