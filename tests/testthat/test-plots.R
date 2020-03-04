context("Plots")

gdd <- pmax(0,rnorm(n = 1000, mean = 3, sd = 1))
test_data <- rbind(
  data.frame(gdd = gdd, is_irr = 0),
  data.frame(gdd = gdd, is_irr = 1)) %>%
  dplyr::mutate(ln_rent = 1 + 0.002*gdd - 0.001*gdd^2 +
                          1*is_irr + 0.001*gdd*is_irr - 0.03*is_irr*gdd^2 +
                          rnorm(n = nrow(.), mean = 0, sd = .3))

head(test_data)

test_that("plot_comparison returns a plot object", {
  test_plot <- plot_comparison(test_data, x = gdd, y = ln_rent,
                               comparison_var = is_irr)
  expect_true("ggplot" %in% class(test_plot))
})

