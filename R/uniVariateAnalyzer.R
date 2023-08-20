# -- uniVariateAnalyzer module --

#' @export
uniVariateAnalyzerUI <- function(id) {
    ns <- shiny::NS(id)
    shiny::fluidRow(shiny::column(width = 4,
                                  shiny::uiOutput(ns("stat_tab"))),
                    shiny::column(width = 8,
                                  shiny::uiOutput(ns("stat_plot"))))

}


#' @export
uniVariateAnalyzerServer <- function(id,
                                     target_variable,
                                     variable_label = "",
                                     plot_density   = FALSE,
                                     date_group     = NULL) {
    shiny::moduleServer(id, function(input, output, session) {
        variable_type <- get_variable_type(target_variable = target_variable)
        data          <- as.data.frame(target_variable)

        if (!is.null(variable_label) && (variable_label != "")) {
            names(data) <- variable_label
        }

        output$stat_tab <- shiny::renderUI({
            if (variable_type %in%  c("double", "integer")) {
                analyze_numerical_variable(target_variable = target_variable,
                                           target_variable = variable_type)
            } else if (variable_type == "Date") {
                analyze_date_variable(target_variable = target_variable)
            } else if (variable_type == "factor") {
                analyze_factor_variable(target_variable = target_variable)
            } else if (variable_type == "character") {
                analyze_character_variable(target_variable = target_variable)
            } else {
                "The variable is a key (distinct values for each observation)"
            }
        })

        output$stat_plot <- shiny::renderUI({
            if (variable_type %in%  c("double", "integer")) {
                plot_numerical(variable_data = data,
                               plot_density  = plot_density)
            } else if (variable_type == "Date") {
                plot_date(variable_data = data,
                          variable_name = variable_label,
                          date_group    = date_group)
            } else if (variable_type == "factor") {
                plot_factor(variable_data = data,
                            variable_name = variable_label)
            } else {
                paste("No available plot for type", variable_type)
            }
        })
    })
}


# -- Helper functions --

analyze_numerical_variable <- function(target_variable, var_type) {
    shiny::fluidRow(shiny::column(width = 12,
                                  get_info_row(label = "Variable Type:",
                                               value = var_type),
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
                                               value = min(target_variable, na.rm = TRUE))))
}


analyze_date_variable <- function(target_variable) {
    shiny::fluidRow(shiny::column(width = 4,
                                  get_info_row(label = "Variable Type:",
                                               value = "Date"),
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
                                               value = min(target_variable, na.rm = TRUE))))
}


analyze_factor_variable <- function(target_variable) {
    analyze_character_variable(target_variable = target_variable,
                               variable_type   = "factor")
}


analyze_character_variable <- function(target_variable,
                                       variable_type = "character") {
    shiny::fluidRow(shiny::column(width = 4,
                                  get_info_row(label = "Variable Type:",
                                               value = variable_type),
                                  get_info_row(label = "Missing Observations Stat.:",
                                               value = get_missing_observations_summary(target_variable = target_variable)),
                                  get_info_row(label = "Unique Values:",
                                               value = length(unique(na.omit(target_variable)))),
                                  get_info_row(label = "Mode:",
                                               value = statistical_mode(target_variable))))
}

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


plot_numerical <- function(variable_data,
                           plot_density) {
    title  <- paste(names(variable_data), "Distribution")
    xlabel <- names(variable_data)
    ylabel <- "Distribution"

    if (plot_density) {
        canvasXpress(
            data                 = variable_data,
            graphType            = "Scatter2D",
            histogramBins        = 10,
            title                = title,
            xAxisTitle           = xlabel,
            yAxisTitle           = ylabel,
            showLegend           = FALSE,
            hideHistogram        = TRUE,
            histogramData        = TRUE,
            showHistogramDensity = TRUE)
    } else {
        canvasXpress(
            data          = data,
            graphType     = "Scatter2D",
            histogramBins = 10,
            title         = title,
            xAxisTitle    = xlabel,
            yAxisTitle    = ylabel,
            showLegend    = FALSE,
            histogramData = TRUE)
    }
}


plot_date <- function(variable_data,
                      variable_name,
                      date_group) {
    if (!is.null(date_group) &&
        !(tolower(date_group) %in% c("year", "month"))) {
        warning("date_group: ", date_group, "is invalid. Setting it to NULL")
        date_group <- NULL
    } else if (!is.null(date_group)) {
        date_group <- tolower(date_group)
    }

    plot_factor(variable_data = variable_data,
                variable_name = variable_name,
                date_group    = date_group)
}


plot_factor <- function(variable_data,
                        variable_name,
                        date_group = NULL) {
    plot_data <- tidyr::drop_na(variable_data)

    if (is.null(date_group)) {
        plot_data <- variable_data %>%
            group_by(.data[[variable_name]])
    } else if (data_group == "year") {
        plot_data <- variable_data %>%
            group_by(lubridate::year(.data[[variable_name]]))
    } else {
        plot_data <- variable_data %>%
            group_by(lubridate::month(.data[[variable_name]]))
    }

    plot_data <- variable_data %>%
        summarise(count = n()) %>%
        as.data.frame()
    rownames(plot_data)        <- plot_data[[variable_name]]
    plot_data[[variable_name]] <- NULL
    plot_data                  <- t(plot_data)

    canvasXpress(
        data             = plot_data,
        graphOrientation = "vertical",
        graphType        = "Bar",
        showLegend       = FALSE,
        smpLabelRotate   = 45,
        smpTitle         = variable_name,
        title            = paste(variable_name, "Distribution")
    )
}
