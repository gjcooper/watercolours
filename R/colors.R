#' Watercolour Colour Palettes
#'
#' Colour palettes derived from paintings from the watercolour artists both
#'   contemporary and masters. Inspired by the [ochRe](https://github.com/ropenscilabs/ochRe)
#'   package and the [dutchmasters](https://github.com/EdwinTh/dutchmasters)
#'   package.
#'
#'   Available palettes:
#'
#'   Anders Zorn - Sommarnöje (1886) - https://commons.wikimedia.org/wiki/File:Sommarn%C3%B6je_(1886),_akvarell_av_Anders_Zorn.jpg
#'
#'   Fidelia Bridges - Calla Lilly (1875) - https://commons.wikimedia.org/wiki/File:Brooklyn_Museum_-_Calla_Lily_-_Fidelia_Bridges_-_overall.jpg
#'
#'   Dorothy (Dolla) Richmond - Mount Egmont (1929) - https://commons.wikimedia.org/wiki/File:D._K._Richmond_-_Mount_Egmont_-_Google_Art_Project.jpg
#' @examples
#' viz_palette(watercolour$zorn$discrete)
#' @export
watercolour = list(
  zorn = list(
    discrete =  c(
      "wood"   = "#7B6154",
      "water"  = "#5A5B33",
      "chair"  = "#406377",
      "water2" = "#696C69",
      "trees"  = "#484A49",
      "boat"   = "#6D4D30",
      "water3" = "#323D32",
      "hat"    = "#A3915D"
    ),
    continuous = c(
      "water3" = "#323D32",
      "dress"  = "#D6D2CA"
    ),
    diverging = c(
      "water3" = "#323D32",
      "dress"  = "#D6D2CA",
      "boat"   = "#6D4D30"
    )
  ),

  bridges = list(
    discrete = c(
      "leaf(sun)"   = "#C2B64A",
      "leaf(under)" = "#707540",
      "leaf(shade)" = "#687466",
      "background"  = "#7E775A",
      "stem"        = "#525D40",
      "flower"      = "#D9D4C1"
    ),
    continuous = c(
      "flower"      = "#D9D4C1",
      "stem"        = "#525D40"
    ),
    diverging = c(
      "leaf(shade)" = "#687466",
      "flower"      = "#D9D4C1",
      "leaf(sun)"   = "#C2B64A"
    )
  ),

  ## Dolla Richmond - Mount Egmont
  ## https://artsandculture.google.com/asset/mount-egmont/2AH3LhLcXldhDA
  richmond = list(
    discrete = c(
      "newgrowth"  = "#C68B4B",
      "tree(fg)"   = "#94572A",
      "tree(mg2)"  = "#573A3A",
      "tree(mg)"   = "#5B634B",
      "tree(bg)"   = "#5D616C",
      "sky"        = "#6477A1"
    ),
    continuous = c(
      "snow"       = "#E6D8BD",
      "tree(mg2)"  = "#573A3A"
    ),
    diverging = c(
      "sky"        = "#6477A1",
      "snow"       = "#E6D8BD",
      "tree(fg)"   = "#94572A"
    )
  ),

  ## Albrecht Durer - Wing of a Blue Roller
  ## https://commons.wikimedia.org/wiki/File:Duerer_wing_of_a_blue_roller.jpg
  durer = list(
    discrete = c(
      "flight"     = "#1583B9",
      "shoulder"   = "#72A286",
      "shadow"     = "#866D76",
      "blood"      = "#CC5A54",
      "signature"  = "#E9A281",
      "chest"      = "#A16B47",
      "down"       = "#DAB354"
    ),
    continuous = c(
      "paper"      = "#F5E5C4",
      "flight"     = "#1583B9"
    ),
    diverging = c(
      "flight"     = "#1583B9",
      "paper"      = "#F5E5C4",
      "blood"      = "#CC5A54"
    )
  )
)
