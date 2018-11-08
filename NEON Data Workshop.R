## NEON workshop
## Nov 8-9, 2018

## Downloading and attaching packages needed for NEON workshop
install.packages("raster")
install.package("neonUtilities")
install.packages("devtools")


source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")
library(devtools)
install_github("NEONScience/NEON-geolocation/geoNEON")

require(raster)
require(neonUtilities)
require(devtools)
require(rhdf5)
require(geoNEON)
