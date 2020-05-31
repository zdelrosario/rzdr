#' Create tibble of quantiles
#'
#' Creates a single-row tibble with quantiles and pr values. Intended for use
#' with `summarize()`.
#' @param x numeric vector whose quantiles are wanted, or column name
#' @param p probability values
#' @param na.rm boolean flag; pre-filter NA's?
#' @return tibble
#' @import rlang
#' @import glue
#' @import tibble
#' @export
#' @examples
#' library(tidyverse)
#' library(rzdr)
#' diamonds %>%
#'   group_by(cut) %>%
#'   summarize(quantile_df(cut))

quantile_df <- function(x, p = c(0.25, 0.50, 0.75), na.rm = FALSE) {
  tibble("{{ x }}" := quantile(x, p, na.rm = na.rm), "{{ x }}_q" := p)
}
