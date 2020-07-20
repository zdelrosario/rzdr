#' Helper for filtering on any logical in a row
#'
#' Helper function for filtering on any TRUE in a row; intended as a replacement
#' for the depreciated `any_vars()` syntax.
#' @param x logical
#' @return logical
#' @export
#' @examples
#' library(tidyverse)
#' library(rzdr)
#' diamonds %>%
#'   filter(rowAny(across(c(x, y, z), ~ .x > 0)))

rowAny <- function(x) {rowSums(x) > 0}
