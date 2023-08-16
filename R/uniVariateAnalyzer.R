# -- uniVariateAnalyzer module --

#' @export
uniVariateAnalyzerUI <- function(id) {
    ns <- shiny::NS(id)
    shiny::uiOutput(ns("stat_tab"))
}


#' @export
uniVariateAnalyzerServer <- function(id, data) {
    shiny::moduleServer(id, function(input, output, session) {

    })
}


# -- Helper functions --
get_badge <- function(value,
                      position = "right",
                      color    = "info",
                      rounded  = TRUE) {
    bs4Dash::dashboardBadge(value,
                            position = position,
                            color    = color,
                            rounded  = rounded)
}


get_info_row <- function(label, value) {
    shiny::fluidRow(shiny::column(width = 6,
                                  label),
                    shiny::column(width = 6,
                                  get_badge(value)))
}


analyze_numerical_variable <- function(target_variable) {
    shiny::fluidRow(shiny::column(width = 4,
                                  get_info_row(label = "Variable Type:",
                                               value = get_variable_type(target_variable = target_variable)),
                                  get_info_row(label = "Missing Observations Stat.:",
                                               value = get_missing_observations_summary(target_variable = target_variable)),
                                  get_info_row(label = "Unique Values:",
                                               value = length(unique(na.omit(target_variable)))),
                                  get_info_row(label = "Median:",
                                               value = round(median(target_variable, na.rm = TRUE), 2)),
                                  get_info_row(label = "Mode:",
                                               value = round(statistical_mode(target_variable), 2)),
                                  get_info_row(label = "Variance:",
                                               value = round(stats::var(target_variable, na.rm = TRUE), 2)),
                                  get_info_row(label = "Standard Deviation:",
                                               value = round(stats::sd(target_variable, na.rm = TRUE), 2)),
                                  get_info_row(label = "1st Quantile:",
                                               value = round(stats::quantile(target_variable, 1/4, na.rm = TRUE), 2)),
                                  get_info_row(label = "3rd Quantile:",
                                               value = round(stats::quantile(target_variable, 3/4, na.rm = TRUE), 2)),
                                  get_info_row(label = "Max:",
                                               value = max(target_variable, na.rm = TRUE)),
                                  get_info_row(label = "Min:",
                                               value = min(target_variable, na.rm = TRUE))),
                    shiny::column(width = 8,
                                  canvasXpress::canvasXpressOutput("numerical_plot")))
}


analyze_date_variable <- function(target_variable) {
    shiny::fluidRow(shiny::column(width = 4,
                                  get_info_row(label = "Variable Type:",
                                               value = get_variable_type(target_variable = target_variable)),
                                  get_info_row(label = "Missing Observations Stat.:",
                                               value = get_missing_observations_summary(target_variable = target_variable)),
                                  get_info_row(label = "Unique Values:",
                                               value = length(unique(na.omit(target_variable)))),
                                  get_info_row(label = "Median:",
                                               value = median(target_variable, na.rm = TRUE)),
                                  get_info_row(label = "Mode:",
                                               value = statistical_mode(target_variable)),
                                  get_info_row(label = "1st Quantile:",
                                               value = round(stats::quantile(target_variable, 1/4, na.rm = TRUE), 2)),
                                  get_info_row(label = "3rd Quantile:",
                                               value = round(stats::quantile(target_variable, 3/4, na.rm = TRUE), 2)),
                                  get_info_row(label = "Max:",
                                               value = max(target_variable, na.rm = TRUE)),
                                  get_info_row(label = "Min:",
                                               value = min(target_variable, na.rm = TRUE))),
                    shiny::column(width = 8,
                                  canvasXpress::canvasXpressOutput("date_plot")))
}


analyze_factor_variable <- function(target_variable) {
    shiny::fluidRow(shiny::column(width = 4,
                                  get_info_row(label = "Variable Type:",
                                               value = get_variable_type(target_variable = target_variable)),
                                  get_info_row(label = "Missing Observations Stat.:",
                                               value = get_missing_observations_summary(target_variable = target_variable)),
                                  get_info_row(label = "Unique Values:",
                                               value = length(unique(na.omit(target_variable)))),
                                  get_info_row(label = "Mode:",
                                               value = statistical_mode(target_variable))),
                    shiny::column(width = 8,
                                  canvasXpress::canvasXpressOutput("factor_plot")))
}
