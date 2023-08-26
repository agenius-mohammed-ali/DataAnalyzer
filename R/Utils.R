#' @export
statistical_mode <- function(variable_data) {
    variable_data <- na.omit(variable_data)
    unique_values <- unique(variable_data)
    frequencies   <- tabulate(match(variable_data, unique_values))
    unique_values[frequencies == max(frequencies)]
}


#' @export
get_variable_type <- function(variable_data, categories_number = 5) {
    assertthat::assert_that(NROW(variable_data) > 0,
                            NCOL(variable_data) == 1,
                            all(!is.na(variable_data)),
                            all(as.character(variable_data) != ""),
                            msg = "Passed data is invalid or empty, please check your setup")

    if (is.null(categories_number) ||
        is.na(categories_number) ||
        !is.numeric(categories_number)) {
        message("'categories_number' has invalid value, setting it to default value '5'")
        categories_number <- 5
    }

    var_type <- "character"
    is_id    <- FALSE

    if (NROW(variable_data) == length(unique(variable_data))) {
        is_id <- TRUE
    }

    if (length(unique(variable_data)) <= categories_number) {
        var_type <- "factor"
    } else if (is.numeric(variable_data)) {
        #var_type <- "numeric" #EX: make it more specific
        var_type <- "double"
        if (all(variable_data == round(variable_data))) {
            var_type <- "integer"
        }
    } else if (inherits(variable_data, c("Date", "POSIXt"))) {
        var_type <- "Date"
    }

    if (is_id) {
        var_type <- paste0(var_type, "(ID)")
    }

    var_type
}


#' @export
get_missing_observations_summary <- function(variable_data) {
    missing_observations_summary <- ""
    rows_no                      <- NROW(variable_data)

    if (rows_no > 0) {
        missing_observations_count   <- sum(is.na(variable_data))
        missing_observations_percent <- round(missing_observations_count/NROW(variable_data), 4) * 100
        missing_observations_summary <- paste0(missing_observations_count, " (", missing_observations_percent, "%)")
    }

    missing_observations_summary
}
