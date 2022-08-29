#' Watercolour Colour Palettes
#'
#' Colour palettes derived from paintings from the watercolour artists both
#'   contemporary and masters. Inspired by the [ochRe](https://github.com/ropenscilabs/ochRe)
#'   package and the [dutchmasters](https://github.com/EdwinTh/dutchmasters)
#'   package.
#'
#'   Available palettes:
#'
#'   Frank Webb - Unknown artwork
#'
#' @examples
#' viz_palette(watercolour$frankwebb)
#' @export
watercolour <- list(
  ## Frank Webb - Unknown artwork
  frankwebb =
    c("roof"        = "#5B332B",
      "tree1"       = "#D0781C",
      "tree2"        = "#73842E",
      "sky1"         = "#51B4B9",
      "sky2"         = "#013781"
      ),

  ## Dolla Richmond - Mount Egmont
  ## https://artsandculture.google.com/asset/mount-egmont/2AH3LhLcXldhDA
  dollarichmond =
    c("tree1"  = "#A18136",
      "tree2"   = "#6F7728",
      "tree3"   = "#5F4C3C",
      "sky"     = "#405FA1",
      "snow"    = "#7A8273"
      )
)
