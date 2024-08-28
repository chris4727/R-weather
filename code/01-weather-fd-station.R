rm(list = ls())

# Load packages with pacman
pacman::p_load(pacman, 
               readr,
               dplyr, 
               ggplot2, 
               httr, 
               lubridate, 
               tidyr,
               glue,
               viridis)

stations_url <- "https://www.ncei.noaa.gov/pub/data/ghcn/daily/ghcnd-inventory.txt"

stations <- read_table(stations_url,
           col_names = c("station", "latitude", "longitude", "variable", "start_year", "end_year"))

stations

# Tacoma latitude and longitude
my_lat <- 47.2526 * 2 * pi/360
my_lon <- -122.4451 * 2 * pi/360

# Cleanup the environment
dev.off()   # Clear plots if there is one
cat("\014") # Clear console. Same as Ctrl+L