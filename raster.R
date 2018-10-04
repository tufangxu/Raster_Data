install.packages("raster")
install.packages("sp")
library(sp)
library(raster)
install.packages("rgdal")
library(rgdal)
par(mar=c(1,1,1,1)) # plot margin is too big 

####################Tiff##############################
#Layer Filter:Spring Indicies: Historical Annual(1981-Prev Year), First Leaf
six.avg.leaf <- raster("si-x_average_leaf_prism.tif")
six.avg.leaf@extent
six.avg.leaf@legend
#Lat, Long of raster data layer
x <- rasterToPoints(six.avg.leaf)
as.data.frame(x)
write.csv(x,"Historical_Annual_(1981-Prev_Year),_First_Leaf.csv")
#View(x)
#1444893 elements....
polygon <- rasterToPolygons(six.avg.leaf) #Takes a long time to generate
polygon


#Layer Filter:Spring Indices, Historical Annual Anomaly (1981-Previous Year) - First Leaf Anomaly
six.leaf.anomaly <- raster("si-x_leaf_anomaly_prism.tif")
six.leaf.anomaly
x <- rasterToPoints(six.leaf.anomaly)
as.data.frame(x)
#View(x)
write.csv(x,"Historical_Annual_Anomaly_(1981-Previous_Year)_First_Leaf_Anomaly.csv")
polygon <- rasterToPolygons(six.avg.leaf)

# Layer Filters:Historical Annual Spring Indices (2016-Previous Year), First Leaf - Spring Index
his.spr.index <- raster("historical spring index.tif")
his.spr.index@extent
x <- rasterToPoints(his.spr.index)
#View(x)
polygon <- rasterToPolygons(x)


