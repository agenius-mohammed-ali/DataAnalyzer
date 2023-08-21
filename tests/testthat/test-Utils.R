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


test_that("get_variable_type", {
    # test no arguments
    expect_error(get_variable_type())

    # test invalid value
    expect_error(get_variable_type(""), "Passed data is invalid or empty, please check your setup")
    expect_error(get_variable_type(NA), "Passed data is invalid or empty, please check your setup")
    expect_error(get_variable_type(NULL), "Passed data is invalid or empty, please check your setup")
    expect_error(get_variable_type(c("", "")), "Passed data is invalid or empty, please check your setup")
    expect_error(get_variable_type(iris), "Passed data is invalid or empty, please check your setup")

    # test single value
    expect_equal(get_variable_type(1), "ID")
    expect_equal(get_variable_type("1"), "ID")

    # test vector
    expect_equal(get_variable_type(iris$Sepal.Length), "double")
    expect_equal(get_variable_type(iris$Species), "factor")
    expect_equal(get_variable_type(mtcars$hp), "integer")
})
