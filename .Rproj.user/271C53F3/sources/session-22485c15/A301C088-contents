#' Show Pokémon Image
#'
#' Displays a Pokémon image in markdown.
#'
#' @param name Pokémon name (e.g., "pikachu") or number (e.g., "25").
#' @return An image path for markdown rendering.
#' @export
show_pokemon <- function(name_or_id) {

  lookup_path <- system.file("extdata", "pokemon_lookup.csv", package = "emojifun")
  emoji_pokemon <- read.csv(lookup_path, stringsAsFactors = FALSE)

  input <- tolower(name_or_id)

  if (input %in% emoji_pokemon$identifier) {
    pokemon_id <- emoji_pokemon$id[emoji_pokemon$identifier == input]
  } else if (input %in% as.character(emoji_pokemon$id)) {
    pokemon_id <- as.integer(input)
  } else {
    stop("Pokémon name or ID not found.")
  }

  file <- paste0(pokemon_id, ".png")

  path <- system.file("pokemon", file, package = "emojifun")

  if (file.exists(path)) {
    knitr::include_graphics(path)
  } else {
    stop("Pokémon image not found.")
  }
}
