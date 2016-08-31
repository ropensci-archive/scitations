#' Make a scitation
#' 
#' @export
#' @param type type of work
#' @param key a key for your entry
#' @param ... key-value pairs, depends on work type
#' @examples
#' scitation("article", doi = "10.7717/peerj.1126")
#' scitation("article", 'petkun2016', doi = "10.7717/peerj.1126")
scitation <- function(type, key = NULL, ...) {
  res <- comp(c(list(type = type, key = key), list(...)))
  structure(res, class = "scitation")
}

#' @export
print.scitation <- function(x, ...) {
  cat("<scitation>", x$doi, "\n")
  cat("  type: ", x$type, "\n")
}
