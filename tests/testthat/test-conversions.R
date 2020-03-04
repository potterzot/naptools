context("Conversion between units")



test_that("acres_to_kmsq works", {
  expect_equal(acres_to_kmsq(1), 247.105)
})
