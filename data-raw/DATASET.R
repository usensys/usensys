## Source this file to rebuild the package datasets

#### maps ######################################################################
library(sf)

if (F) {
  usensys_maps <- list()
  ## 26-zones (MIP/PowerGenome)
  (load("data-raw/us26_sf.RData"))
  usensys_maps$us26_sf <- us26_sf

  ## Save the dataset ####
  usethis::use_data(
    usensys_maps,
    compress = "xz",
    overwrite = TRUE, internal = FALSE)
}

#### Capacity factors ##########################################################
if (F) {
  capacity_factors <- list()

  (x <- load("data-raw/cf_mip26_tol01.RData"))
  capacity_factors$us26_mip_tol01 <- get(x); rm(x)

  (x <- load("data-raw/cf_mip26_tol05.RData"))
  capacity_factors$us26_mip_tol05 <- get(x); rm(x)

  (x <- load("data-raw/cf_mip26_tol10.RData"))
  capacity_factors$us26_mip_tol10 <- get(x); rm(x)

  usethis::use_data(
    capacity_factors,
    compress = "xz",
    overwrite = TRUE, internal = FALSE)

  rm(capacity_factors)
}

#### Calendars ####
if (F) {
  calendars <- list()

  (x <- load("data-raw/calendar_52w.RData"))
  calendars$calendar_52w <- get(x); rm(x)

  (x <- load("data-raw/calendar_4w.RData"))
  calendars$calendar_4w <- get(x); rm(x)

  (x <- load("data-raw/calendar_12d.RData"))
  calendars$calendar_12d <- get(x); rm(x)

  (x <- load("data-raw/calendar_4d_6h.RData"))
  calendars$calendar_4d_6h <- get(x); rm(x)

  names(calendars)

  usethis::use_data(
    calendars,
    compress = "xz",
    overwrite = TRUE, internal = FALSE)

  rm(calendars)
}

#### Horizons ####
if (F) {
  horizons <- list()

  horizons$horizon_2027 <- newHorizon(2027, 1, name = "Y2027",
                                      desc = "One year horizon: 2027")
  horizons$horizon_2030 <- newHorizon(2030, 1, name = "Y2030",
                                      desc = "One year horizon: 2030")
  horizons$horizon_2035 <- newHorizon(2035, 1, name = "Y2035",
                                      desc = "One year horizon: 2035")
  horizons$horizon_2040 <- newHorizon(2040, 1, name = "Y2040",
                                      desc = "One year horizon: 2040")
  horizons$horizon_2045 <- newHorizon(2045, 1, name = "Y2045",
                                      desc = "One year horizon: 2045")
  horizons$horizon_2050 <- newHorizon(2050, 1, name = "Y2050",
                                      desc = "One year horizon: 2050")

  horizons$horizon_2027_2050_by5 <- newHorizon(
    intervals = data.frame(
      start = c(2027, 2030, 2035, 2040, 2045, 2050),
      mid = c(2027, 2030, 2035, 2040, 2045, 2050),
      end = c(2027, 2030, 2035, 2040, 2045, 2050)
    ),
    name = "Y2027_2050_by5",
    desc = "2027-2050 horizon with 5-year intervals"
  )

  horizons$horizon_2027_2050_by10 <- newHorizon(
    intervals = data.frame(
      start = c(2027, 2030, 2040, 2050),
      mid = c(2027, 2030, 2040, 2050),
      end = c(2027, 2030, 2040, 2050)
    ),
    name = "Y2027_2050_by10",
    desc = "2027-2050 horizon with 10-year intervals"
  )

  names(horizons)

  usethis::use_data(
    horizons,
    compress = "xz",
    overwrite = TRUE, internal = FALSE
    )

  rm(horizons)
}

