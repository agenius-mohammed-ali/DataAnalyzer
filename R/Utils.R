#' @export
statistical_mode <- function(variable_data) {
    #variable_data <- na.omit(variable_data)
    unique_values <- unique(variable_data)
    frequencies   <- tabulate(match(variable_data, unique_values))
    unique_values[frequencies == max(frequencies)]
}


#' @export
get_variable_type <- function(variable_data, categories_number = 5) {
    var_type <- "character"

    if (NROW(variable_data) == length(unique(variable_data))) {
        var_type <- "ID"
    } else if (length(unique(variable_data)) <= categories_number) {
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
