#install.packages("pacman")

# Load packages with pacman
pacman::p_load(pacman, 
               dplyr, 
               ggplot2, 
               httr, 
               lubridate, 
               tidyr,
               glue,
               viridis)

library(datasets) # Load base R packages

# Clear packages
p_unload(all)
p_unload(viridis, lubridate) # Clear specific packages
detach("package:datasets", unload = TRUE) # Clear base R packages

# Cleanup the environment
dev.off()   # Clear plots if there is one
cat("\014") # Clear console. Same as Ctrl+L
