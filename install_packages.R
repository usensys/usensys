required_pkgs <- c(
  "devtools",
  "tidyverse",
  "lubridate",
  "tibble",
  "ggrepel",
  "sp",
  "spdep",
  "raster"
)

is.installed <- function(pkg) {
  # Checks if the package exists in libs
  any((installed.packages())[, "Package"] == pkg)
}

# Install if missing
for (pkg in required_pkgs) {
  # if(!require(pkg, character.only = TRUE)) {
  # if (!any((installed.packages())[, "Package"] == pkg)) {
  if (!is.installed(pkg)) {
    message("Downloading and installing package: ", pkg)
    install.packages(pkg)
    # library(pkg, character.only = TRUE)
  }
}

if(!is.installed("energyRt")) devtools::install_github("olugovoy/energyRt")


