test_that("statistical_mode", {
    # test no arguments
    expect_error(statistical_mode())

    # test invalid value
    expect_equal(statistical_mode(""), "")
    expect_equal(statistical_mode(NA), NA)
    expect_null(statistical_mode(NULL))

    # test single value
    expect_equal(statistical_mode(1), 1)
    expect_equal(statistical_mode("a"), "a")

    # test vector
    expect_equal(statistical_mode(mtcars$mpg), c(21, 22.8, 21.4, 19.2, 15.2, 10.4, 30.4))
    expect_equal(statistical_mode(mtcars$cyl), 8)
    expect_equal(statistical_mode(iris$Species), as.factor(c("setosa", "versicolor", "virginica")))
})
