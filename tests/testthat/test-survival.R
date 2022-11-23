test_that("survival.probs works", {
  expect_equal(survival.probs(time = c(1,2,3,4,5), event = c(0,1,1,1,1)),
               c(0.75, 0.5, 0.25, 0.0))
})
