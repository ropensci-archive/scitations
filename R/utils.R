make_key <- function(x) {
  paste0(tolower(x$author[[1]]$family[1]), get_year(x, 'created')[1])
}

get_year <- function(x, field) {
  se(x[[field]], "[0-9]{4}")
}

parse_bib <- function(x) {
  x <- gsub("@[Dd]ata", "@Misc", x)
  writeLines(x, "tmpscratch.bib")
  output <- read.bib("tmpscratch.bib")
  unlink("tmpscratch.bib")
  output
}
