#' watercolour palette with ramped colours
#'
#' @param palette Choose from 'watercolour_palettes' list
#'
#' @param type A string representing the palette type, should be one of
#'   discrete, continuous or diverging
#'
#' @param alpha transparency
#'
#' @export
watercolour_pal <- function(palette="zorn", type = "discrete", alpha = 1) {
    pal <- watercolour[[palette]][[type]]
    colorRampPalette(pal, alpha)
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_watercolour
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams watercolour_pal
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl)), size = 4) +
#'   scale_colour_watercolour()
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_watercolour(palette="zorn", type = "continuous")
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_watercolour(palette="richmond")
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_watercolour <- function(...,
                                    palette = "zorn",
                                    type = "discrete",
                                    alpha = 1
                                    ) {
  if (type == "discrete") {
    discrete_scale("colour", "discrete", watercolour_pal(palette, type, alpha), ...)
  } else {
    scale_color_gradientn(colours = watercolour_pal(palette, type, alpha)(256), ...)
  }
}

#' @rdname scale_color_watercolour
#' @export
scale_colour_watercolour <- scale_color_watercolour

#' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'watercolour_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams watercolour_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_watercolour <- function(...,
                                   palette = "zorn",
                                   type = "discrete",
                                   alpha = 1
                                   ) {
  if (type == "discrete") {
    discrete_scale("fill", "discrete", watercolour_pal(palette, type, alpha), ...)
  } else {
    scale_fill_gradientn(colours = watercolour_pal(palette, type, alpha)(256), ...)
  }
}
