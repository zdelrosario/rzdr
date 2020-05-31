#' Create tibble of quantiles
#'
#' Creates a single-row tibble with quantiles and pr values. Intended for use
#' with `summarize()`.
#' @param x numeric vector whose quantiles are wanted, or column name
#' @param p probability values
#' @return tibble
#' @import rlang
#' @import glue
#' @import tibble
#' @export

quantile_df <- function(x, p = c(0.25, 0.50, 0.75)) {
  tibble("{{ x }}" := quantile(x, p), "{{ x }}_q" := p)
}
