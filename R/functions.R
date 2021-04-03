#' Dropping special characters in names of regions
#'
#' @param x character vector
#'
#' @return
#' Character vector with dropped special characters according to USENSYS-IPM convention
#' @export
#'
#' @examples
ipm2reg <- function(x) {
  gsub("&|-", "", x)
}

#' Rename columns and region-names according to USENSYS-IPM convention
#'
#' @param dat 
#'
#' @return
#' @export
#'
#' @examples
usensys_IPM_convention <- function(dat) {
  # renames columns and region-names to the USENSYS-IPM convention
  # (dropping special characters)
  
  f <- function(from, to, FUN = NULL) {
    # browser()
    if (!is.null(dat[[from]])) {
      # vars <- list(); vars[[from]] = to
      names(from) <- to
      dat <<- rename(dat, !!from)
      if (!is.null(FUN)) {
        dat[[to]] <<- eval(call(FUN, dat[[to]]))
      }
    }
  }
  f("Region_Name", "region", "ipm2reg")
  f("Region", "region", "ipm2reg")
  f("IPM_Region", "region", "ipm2reg")
  f("State_Name", "state", "as.character")
  f("State", "state", "as.character")
  f("Month", "month", "as.integer")
  f("Day", "yday", "as.integer") # ToDo: add check for the range
  f("Day_Of_Month", "day", "as.integer")
  f("Day_of_Month", "day", "as.integer")
  f("Season", "season", "as.character")
  f("Resource_Class", "res_class", "as.integer")
  f("Cost_Class", "cost_class", "as.integer")
  dat
}

#' Convert variable costs (USD/MWh) to fixed costs (USD/MW)
#'
#' @param varom numeric vector with variable costs (aka USD/MWh)
#' @param afa annual availability/capacity factor (% of year)
#' @param cap2act capacity to activity parameter
#' @param convert_factor units conversion factor, `energyRt::convertconvert("USD/MWh", "MUSD/GWh")` by default
#'
#' @return
#' @export
#'
#' @examples
varom2fixom <- function(varom = 0, afa = 1, cap2act = 24 * 365, convert_factor = 0.001) {
  # converts USD/MWh to USD/MW of capacity (when convert_factor = 1)
  # varom - variable costs aka USD/MWh
  # afa - annual availability/capacity factor (% of year)
  # cap2act - capacity to activity parameter
  # convert_factor = convert("USD/MWh", "MUSD/GWh") by default
  varom * cap2act * afa * convert_factor
}

fixom2varom <- function(fixom = 0, afa = 1, cap2act = 24 * 365, convert_factor = 1e3) {
  # converts USD/MW to USD/MWh (when convert_factor = 1)
  #          MUSD/GW to USD/MWh (when convert_factor = 1e3)
  # varom - variable costs aka USD/MWh
  # afa - annual availability/capacity factor (% of year)
  # cap2act - capacity to activity parameter
  # convert_factor = convert("USD/MWh", "MUSD/GWh") by default
  fixom / (cap2act * afa) * convert_factor
}
