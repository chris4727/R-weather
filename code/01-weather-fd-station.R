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

# Tacoma latitude and longitude
my_lat <- 47.2526 * 2 * pi/360    # Convert latitude to radians
my_lon <- -122.4451 * 2 * pi/360  # Convert longitude to radians

tacoma_station <- stations %>% 
  mutate(lat_rad = latitude * 2 * pi/360, # Convert stations lat/long to radians
         lon_rad = longitude * 2 * pi/360,
         # Gives distance from my_lat/my_lon in km. For miles, remove the 1.609344.
         distance = 1.609344 * 3963 * acos((sin(lat_rad) * sin(my_lat)) + cos(lat_rad) * cos(my_lat) * cos(my_lon - lon_rad))
         ) %>%  
  filter(start_year < 1988 & end_year >= 2024) %>%
  arrange(distance) %>%
  top_n(n = -1, distance) %>% # Find the closest station that meets the above criteria
  distinct(station) %>%      # Only show the station name of the closest station
  pull(station)               # Pull just the value of the station id

seatac_station <- "USW00024233" # Seatac station has more variables going back to 1948

# Cleanup the environment
dev.off()   # Clear plots if there is one
cat("\014") # Clear console. Same as Ctrl+L