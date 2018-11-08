## NEON workshop ##
###################
## Nov 8, 2018
# Accessing Aquatic data 
## Getting set up
require(raster)
require(neonUtilities)
require(devtools)
require(rhdf5)
require(geoNEON)

##Downloading and stacking macroinvert data
zipsByProduct(dpID="DP1.20120.001", site="MAYF", package="expanded", check.size=T, 
              savepath="~/Downloads")

stackByTable("~/Downloads/filesToStack20120/", folder=T)

#loading in data
inv_field<-read.delim("~/Downloads/filesToStack20120/stackedFiles/inv_fieldData.csv", sep=",")
View(inv_field)

inv_persample<-read.delim("~/Downloads/filesToStack20120/stackedFiles/inv_persample.csv", sep=",")
View(inv_persample)