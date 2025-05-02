#' Load Emoji JSON (key = emoji, value = keywords)
#' @return A named character vector: keyword -> emoji
#' @keywords internal
load_emoji_json <- function() {
  path <- system.file("extdata", "emoji-en-US.json", package = "emojifun")
  emoji_list <- jsonlite::fromJSON(path)

  emoji_map <- list()

  for (emoji_char in names(emoji_list)) {
    keywords <- emoji_list[[emoji_char]]
    for (kw in keywords) {
      # Only map keyword if it's not already mapped (first match wins)
      if (is.null(emoji_map[[tolower(kw)]])) {
        emoji_map[[tolower(kw)]] <- emoji_char
      }
    }
  }

  return(unlist(emoji_map))
}
