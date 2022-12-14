test_that("survival.probs works", {
  expect_equal(survival.probs(time = c(1,2,3,4,5), event = c(0,1,1,1,1)),
               c(0.75, 0.5, 0.25, 0.0))
  time2 = c(1:6000)
  event2 = sample(c(0,1), replace=TRUE, size=6000)
  expect_equal(survival.probs(time2, event2),
               summary(survival::survfit(survival::Surv(time2, event2)~1))$surv)
})
