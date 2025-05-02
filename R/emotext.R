#' This is the function for showing the information of XXX
#'
#' @param text A character string to convert.
#'
#' @returns A character string with emojis.
#'
#' @examples
#' hello()
#'
#' @export


tte <- function(text) {
  emoji_dict <- list(
    happy = "😊",
    sad = "😢",
    heart = "❤️",
    fire = "🔥",
    smile = "😄",
    sun = "☀️",
    moon = "🌙",
    star = "⭐",
    laugh = "😂",
    cool = "😎",
    love = "😍",
    angry = "😠",
    dog = "🐶",
    cat = "🐱",
    party = "🥳",
    coffee = "☕",
    book = "📖",
    music = "🎵",
    cake = "🎂",
    phone = "📱",
    idea = "💡",
    money = "💰",
    rain = "🌧️",
    snow = "❄️",
    flower = "🌸",
    tree = "🌳",
    food = "🍽️",
    pizza = "🍕",
    burger = "🍔",
    icecream = "🍦",
    car = "🚗",
    bike = "🚲",
    computer = "💻",
    camera = "📷",
    travel = "✈️",
    airplane = "✈️",
    school = "🏫",
    work = "💼",
    sleep = "😴",
    tired = "🥱",
    run = "🏃",
    dance = "💃",
    clap = "👏",
    thumbs_up = "👍",
    thumbs_down = "👎",
    ok = "👌",
    no = "🙅",
    yes = "🙆",
    hug = "🤗",
    cry = "😭",
    surprised = "😲",
    sick = "🤒",
    robot = "🤖",
    ghost = "👻",
    skull = "💀",
    starstruck = "🤩",
    nervous = "😬",
    wink = "😉",
    blush = "😊",
    nerd = "🤓",
    pray = "🙏",
    celebrate = "🎉",
    chocolate = "🍫",
    donut = "🍩",
    watermelon = "🍉",
    banana = "🍌",
    strawberry = "🍓"
  )

  words <- unlist(strsplit(text, "\\s+"))
  emojis <- sapply(words, function(word) {
    if (tolower(word) %in% names(emoji_dict)) {
      emoji_dict[[tolower(word)]]
    } else {
      word
    }
  })

  paste(emojis, collapse = " ")
}

