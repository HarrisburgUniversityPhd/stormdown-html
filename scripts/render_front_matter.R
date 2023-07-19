render_front_matter <- function(path) {
  path <- here::here(path)
  lines <- readLines(path, encoding = "UTF-8")
  paste(lines, collapse = '\n  ')
}