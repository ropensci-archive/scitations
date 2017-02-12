#' Make a scitation
#' 
#' @export
#' @param type type of work
#' @param key a key for your entry
#' @param ... key-value pairs, depends on work type, see 
#' \code{\link{work_types}}
#' @examples
#' # scitation("article", doi = "10.7717/peerj.1126")
#' scitation(
#'  "article", 
#'  'petkun2016', 
#'  doi = "10.7717/peerj.1126",
#'  author = "foobar",
#'  title = "That and this and stuff and things",
#'  journaltitle = "Stuff And Things",
#'  year = 2001
#' )
#' 
#' scitation(
#'  "book", 
#'  'deGroot2015', 
#'  doi = "10.1007/978-1-349-22928-4",
#'  author = "de Groot, Joanna; Maynard, Mary",
#'  title = "Women's Studies in the 1990s",
#'  year = 2015
#' )
scitation <- function(type, key = NULL, ...) {
  res <- comp(c(list(type = type, key = key), list(...)))
  check_types(res)
  check_fields(res)
  structure(res, class = "scitation")
}

#' @export
print.scitation <- function(x, ...) {
  cat("<scitation>", x$doi, "\n")
  cat("  type: ", x$type, "\n")
}
