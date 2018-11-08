## NEON workshop
## Nov 8-9, 2018

## Downloading and attaching packages needed for NEON workshop
# uncomment to install
#install.packages("raster")
#install.packages("neonUtilities")
#install.packages("devtools")


#source("http://bioconductor.org/biocLite.R")
#biocLite("rhdf5")
#library(devtools)
#install_github("NEONScience/NEON-geolocation/geoNEON")

##NEON WORKSHOP DAY 1
## Getting set up
require(raster)
require(neonUtilities)
require(devtools)
require(rhdf5)
require(geoNEON)

options(stringsAsFactors=F)

# stack data from portal - helps merge month files
# this routine is also available as a tutorial on NEON science (neonscience.org/download-explore-neon-data)
stackByTable("~/Downloads/NEON_par.zip")


