#' print citation
#' 
#' @param x input
#' @examples 
#' sciprint(scitation("article", 'petkun2016', doi = "10.7717/peerj.1126"))
sciprint <- function(x) {
  paste(x$authors, x$year, x$title, x$journal, x$pages)
}
