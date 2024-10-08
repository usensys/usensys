# Documentation of the data objects in the package.


#' GIS/map-objects for alternative versions of the model.
#'
#' @format A list of sf-objects:
#' \describe{
#'   \item{us26_sf}{26-region map}
#' }
#' @examples
#' plot(usensys_maps$us26_sf["region"])
#' library(ggplot2)
#' ggplot() + geom_sf(data = usensys_maps$us26_sf, aes(fill = region)) + theme_bw()
"usensys_maps"
