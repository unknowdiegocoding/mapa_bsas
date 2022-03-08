install.packages("mapdata")

library(sf)
library(ggplot2)
library(tidyverse)
library(mapdata)
library(maps)
library(dplyr)

municipios <- st_read("barrio.json")

##st_drivers()
cabaxbarrio <- read.csv("cabaxbarrio.csv")


ggplot(data = municipios) +
  geom_sf()


##ggplot(data = flujov,aes(LATITUD,LONGITUD), size_sum(CANTIDAD)) +
##    geom_point()

#ggplot() + 
#  geom_polygon(data = flujov, aes(x = LONGITUD, y = LATITUD, group = NULL)) + 
#  scale_x_continuous(limits = c(-7,10)) + 
#  scale_y_continuous(limits = c(40,53)) + 
#  coord_map() + 
#  theme(axis.text = element_blank(), axis.title = element_blank()) 
#geom_point(data = flujov, aes(x = LONGITUD, y = LATITUD))

ggplot() +
    geom_point( data=cabaxbarrio, aes(x=BARRIO, y=BARRIO)) +
  theme_void() + ylim(50,59) + coord_map() 





