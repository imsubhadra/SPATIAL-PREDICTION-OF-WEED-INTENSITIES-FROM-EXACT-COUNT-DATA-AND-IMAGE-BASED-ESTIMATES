mydir <- "C:/Users/sudesh yadav/OneDrive - IIT Kanpur/Desktop/spatial project"
setwd(mydir)
data <- read.csv("spatial_data.csv")
View(data)
library(plot3D)
scatter2D(data, x = data[ ,1], y = data[ , 2],colvar = data$Exact.weed.counts)

scatter2D(x = data[ ,1], y =data[ ,2], colvar = data$Exact.weed.counts, pch= 12)

scatter2D(x = data[ ,1], y = data[ ,2], colvar = data$Exact.weed.counts, pch= 12, xlab = "Eastings..meter", ylab = "data$Northing.meter", main = "Number of Weeds")

library(ggplot2)
library(viridis)
plot <- ggplot(data, aes(x = eastering_meter, y = northering_meter)) +
  geom_point(aes(color = `exct weed count`), size = 3)  # Scatter points with color mapping
  
