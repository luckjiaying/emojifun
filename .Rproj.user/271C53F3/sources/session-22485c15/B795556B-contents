#' This is the function for showing the information of XXX
#'
#' @param mbti A character string, e.g., "INTJ".
#'
#' @returns Displays the corresponding emoji image.
#'
#' @examples
#' hello()
#'
#' @export
#'
mbtie <- function(mbti) {
  mbti <- toupper(mbti)
  img_path <- system.file("images", paste0(mbti, ".png"), package = "emojifun")

  if (file.exists(img_path)) {
    knitr::include_graphics(img_path)
  } else {
    message("Emoji image not found for ", mbti)
  }
}
