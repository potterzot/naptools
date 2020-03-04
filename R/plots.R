#' Scatter and trend plot comparison.
#'
#' @import ggplot2
#' @export
#' @param df a data.frame.
#' @param x the horizontal axis variable.
#' @param y the vertical axis variable.
#' @param comparison_var the variable to group by.
#' @return a ggplot2 plot object.
plot_comparison <- function(df, x, y, comparison_var) {
  ggplot(data = df) +
    geom_point(aes(x = {{ x }}, y = {{ y }},
                   color = as.factor({{ comparison_var }}))) +
    geom_smooth(aes(x = {{ x }}, y = {{ y }},
                    color = as.factor({{ comparison_var }})),
                method = "lm", formula = y ~ poly(x, 2), se = FALSE) +
    theme_bw()
}
