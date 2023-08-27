local_edition(3)

test_that("uniVariateAnalyzerUI", {
  expect_snapshot(uniVariateAnalyzerUI(id = "FieldChecker"))
})


test_that("uniVariateAnalyzer - double ID with default parameters", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = head(iris$Sepal.Length)),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(output$stat_plot)
               })
})


test_that("uniVariateAnalyzer - double with default parameters", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = iris$Sepal.Length),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - double with density plot", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = iris$Sepal.Length,
                           plot_density  = TRUE),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - factor with default parameters", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = iris$Species),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - integer with default parameters", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = mtcars$hp),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - date with default parameters", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = lubridate::as_date(iris$Sepal.Length)),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - date with year group", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = lubridate::as_date(iris$Sepal.Length),
                           date_group    = "Year"),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - date with month group", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = lubridate::as_date(iris$Sepal.Length),
                           date_group    = "month"),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - date with invalid group", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = lubridate::as_date(iris$Sepal.Length),
                           date_group    = "nogroup"),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - date with invalid group", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data = lubridate::as_date(iris$Sepal.Length),
                           date_group    = "nogroup"),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})


test_that("uniVariateAnalyzer - invalid data", {
    expect_warning(testServer(uniVariateAnalyzer,
               args = list(variable_data = NULL),
               expr = {}))
})


test_that("uniVariateAnalyzer - character with default different label", {
    testServer(uniVariateAnalyzer,
               args = list(variable_data  = as.character(iris$Sepal.Length),
                           variable_label = "Length"),
               expr = {
                   expect_snapshot(output$stat_tab)
                   expect_snapshot(class(output$stat_plot))
               })
})
