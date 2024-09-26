## Source this file to rebuild the package datasets

## maps ####
library(sf)
usensys_maps <- list()

## 26-zones (MIP/PowerGenome)
(load("data-raw/us26_sf.RData"))
usensys_maps$us26_sf <- us26_sf


## Save the datasets ####
usethis::use_data(
  usensys_maps,
  overwrite = TRUE, internal = FALSE)
