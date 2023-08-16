#' @export
statistical_mode <- function(target_variable) {
    unique_values <- unique(target_variable)
    frequencies   <- tabulate(match(target_variable, unique_values))
    unique_values[frequencies == max(frequencies)]
}


#' @export
get_variable_type <- function(target_variable, categories_number = 5) {
    var_type <- "character"

    if (NROW(target_variable) == length(unique(target_variable))) {
        var_type <- "ID"
    } else if (length(unique(target_variable)) <= categories_number) {
        var_type <- "factor"
    } else if (is.numeric(target_variable)) {
        #var_type <- "numeric" #EX: make it more specific
        var_type <- "double"
        if (all(target_variable == round(target_variable))) {
            var_type <- "integer"
        }
    } else if (inherits(target_variable, c("Date", "POSIXt"))) {
        var_type <- "Date"
    }

    var_type
}

#' @export
get_missing_observations_summary <- function(target_variable) {
    missing_observations_summary <- ""
    rows_no                      <- NROW(target_variable)

    if (rows_no > 0) {
        missing_observations_count   <- sum(is.na(target_variable))
        missing_observations_percent <- round(missing_observations_count/NROW(target_variable), 4)
        missing_observations_summary <- paste0(missing_observations_count, "(", missing_observations_percent, ")")
    }

    missing_observations_summary
}
