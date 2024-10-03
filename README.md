# R Weather

An R project to explore historic weather data.

# Tasks

- [ ] Setup NOAA data download script
- [ ] Tidy NOAA data
- [ ] Create script to calculate the [Heat Index](https://www.weather.gov/ama/heatindex).
  - [ ] Could use the [library(weathermetrics)](https://github.com/geanders/weathermetrics/)
  - [ ] Add a sun/shade adjustment.
  - [ ] Output a message on the effect of the heat on the body.
- [ ] Analyze historical data to determine how often the heat index is higher than the ambient temperature in Washington State.
  - [ ] Are there any trends that would indicate a change in the future? 

# Resources

[Scraping weather data from the internet with R and the tidyverse (CC231)](https://www.youtube.com/watch?v=V5Df6vw4-e8)
# Data

Directory to store raw data.

# Data References

- [Riffomonas local_weather.R](https://github.com/riffomonas/climate_viz/blob/b126cc31e7e4d13feb8b5047795e0a243d81f64a/code/local_weather.R)
- [NOAA Climate Data Online](https://www.ncei.noaa.gov/cdo-web/)
  - [NOAA Daily Summaries GUI Browser](https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.ncdc:C00861/html)
  - [NOAA Daily Summary HTTPS Server](https://www.ncei.noaa.gov/pub/data/ghcn/daily/)
