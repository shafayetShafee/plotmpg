#' Plot the mpg dataset's displ and hwy variable
#'
#' This funciton provides a way for plotting mpg dataset's displ and hwy
#' with different facet and colour variable using [ggplot2] package.
#'
#' @param colour_var A variable name as a string to use as a
#' mapping in [ggplot2::aes()] for the colour aesthetic, or `NULL` to suppress.
#' @param facet_var A variable name as a string to use as in
#' [ggplot2::facet_wrap()] for the colour aesthetic, or `NULL` to skip facetting.
#'
#' @return A [ggplot2::ggplot()] object.
#' @export
#'
#' @examples
#' plot_mpg("class", "drv")
#' plot_mpg(NULL, "drv")
#' plot_mpg(NULL, NULL)
#' @importFrom ggplot2 ggplot aes facet_wrap geom_point vars
#' @importFrom rlang .data
plot_mpg <- function(colour_var, facet_var) {
  mapping <- aes(.data$displ, .data$hwy, colour = .data[[colour_var]])

  if(is.null(colour_var)) {
    mapping$colour <- NULL
  }

  if(is.null(facet_var)) {
    facet <- NULL
  } else {
    facet <- facet_wrap(vars(.data[[facet_var]]))
  }

  ggplot(ggplot2::mpg) +
    geom_point(mapping) +
    facet
}
