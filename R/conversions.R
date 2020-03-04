#' Convert acres to square kilometers.
#'
#' @export
#' @param acres numeric acres to convert.
#' @return kilometers squared.
acres_to_kmsq <- function(acres) {
  acres * 247.105
}
