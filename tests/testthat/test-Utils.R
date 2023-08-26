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

    # test category number
    expect_message(get_variable_type(iris$Sepal.Length, categories_number = NULL), "'categories_number' has invalid value, setting it to default value '5'")
    expect_message(get_variable_type(iris$Sepal.Length, categories_number = NA), "'categories_number' has invalid value, setting it to default value '5'")
    expect_message(get_variable_type(iris$Sepal.Length, categories_number = "5"), "'categories_number' has invalid value, setting it to default value '5'")
    expect_equal(get_variable_type(iris$Species, categories_number = 1), "character")

    # test single value
    expect_equal(get_variable_type(1), "factor(ID)")
    expect_equal(get_variable_type("1"), "factor(ID)")

    # test vector
    expect_equal(get_variable_type(iris$Sepal.Length), "double")
    expect_equal(get_variable_type(iris$Species), "factor")
    expect_equal(get_variable_type(mtcars$hp), "integer")

    mts <- as.numeric(time(AirPassengers))
    tms <- lubridate::date_decimal(mts)
    expect_equal(get_variable_type(tms), "Date(ID)")

    expect_equal(get_variable_type(lubridate::as_date(iris$Sepal.Length)), "Date")
})

test_that("get_variable_type", {
    # test no arguments
    expect_error(get_missing_observations_summary())

    # test different values
    expect_equal(get_missing_observations_summary(""), "0 (0%)")
    expect_equal(get_missing_observations_summary(NA), "1 (100%)")
    expect_equal(get_missing_observations_summary(NULL), "")
    expect_equal(get_missing_observations_summary(c("", "")), "0 (0%)")
    expect_equal(get_missing_observations_summary(iris), "0 (0%)")
    expect_equal(get_missing_observations_summary(presidents), "6 (5%)")

})
