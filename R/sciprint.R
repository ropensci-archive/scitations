#' print citation
#' 
#' @param x input
#' @examples 
#' x <- scitation(
#'  "article", 
#'  'petkun2016', 
#'  doi = "10.7717/peerj.1126",
#'  author = "foobar",
#'  title = "That and this and stuff and things",
#'  journaltitle = "Stuff And Things",
#'  year = 2001
#' )
#' #sciprint(x)
sciprint <- function(x) {
  paste(x$author, x$year, x$title, x$journal, x$pages)
}
