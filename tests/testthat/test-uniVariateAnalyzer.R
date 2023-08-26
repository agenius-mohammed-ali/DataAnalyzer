local_edition(3)

test_that("uniVariateAnalyzerUI", {
  expect_snapshot(uniVariateAnalyzerUI(id = "FieldChecker"))
})
