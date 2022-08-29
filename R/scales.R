#' watercolours palette with ramped colours
#'
#' @param palette Choose from 'watercolours_palettes' list
#'
#' @param alpha transparency
#'
#' @param reverse If TRUE, the direction of the colours is reversed.
#'
#' @export
watercolours_pal <- function(palette="frankwebb", alpha = 1, reverse = FALSE) {
    pal <- watercolours[[palette]]
    if (reverse){
        pal <- rev(pal)
    }
    return(colorRampPalette(pal, alpha))
}

#' Setup colour palette for ggplot2
#'
#' @rdname scale_color_watercolours
#'
#' @param palette Choose from 'watercolours_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @inheritParams viridis::scale_color_viridis
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl)), size = 4) +
#'   scale_colour_watercolours()
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_watercolours(palette="frankwebb", discrete = FALSE)
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_watercolours(palette="dollarichmond")
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_watercolours <- function(..., palette = "frankwebb",
                                     discrete = TRUE, alpha = 1,
                                     reverse = FALSE) {
   if (discrete) {
       discrete_scale("colour", "watercolours", palette=watercolours_pal(palette, alpha = alpha, reverse = reverse))
   } else {
       scale_color_gradientn(colours = watercolours_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
   }
}

#' @rdname scale_color_watercolours
#' @export
scale_colour_watercolours <- scale_color_watercolours

#' Setup fill palette for ggplot2
#'
#' @param palette Choose from 'watercolours_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams watercolours_pal
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#'
#' @export
scale_fill_watercolours <- function(..., palette="frankwebb",
                              discrete = TRUE, alpha=1, reverse = TRUE) {
    if (discrete) {
        discrete_scale("fill", "watercolours", palette=watercolours_pal(palette, alpha = alpha, reverse = reverse))
    }
    else {
        scale_fill_gradientn(colours = watercolours_pal(palette, alpha = alpha, reverse = reverse, ...)(256))
    }
}
