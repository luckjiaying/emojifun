#' Text to Emoji Converter with Exclusions
#'
#' Converts keywords in a sentence into emojis, except for excluded words.
#'
#' @param text A character string to convert.
#' @param exclude A character vector of words to exclude from emoji conversion (case-insensitive).
#' @return A character string with emojis.
#' @examples
#' tte("I love my children", exclude = c("i", "my"))
#' @export
newtte <- function(text, exclude = c("i")) {
  emoji_dict <- load_emoji_json()

  words <- unlist(strsplit(text, "\\s+"))
  emojis <- sapply(words, function(word) {
    clean_word <- tolower(gsub("[^a-zA-Z0-9]", "", word))
    if (clean_word %in% tolower(exclude)) {
      word  # keep original
    } else if (clean_word %in% names(emoji_dict)) {
      emoji_dict[[clean_word]]
    } else {
      word
    }
  })

  paste(emojis, collapse = " ")
}
