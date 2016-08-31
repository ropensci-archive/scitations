#' coerce things to scitations
#' 
#' @export
#' @param x input
#' @examples 
#' # with rcrossref
#' library("rcrossref")
#' res <- cr_works(limit = 10)
#' as.scitation(res$data) 
#' 
#' # self
#' x <- scitation("article", 'petkun2016', doi = "10.7717/peerj.1126")
#' as.scitation(x)
#' 
#' # a doi
#' as.scitation("10.7717/peerj.1126")
as.scitation <- function(x) {
  UseMethod("as.scitation")
}

#' @export
as.scitation.scitation <- function(x) x

#' @export
as.scitation.character <- function(x) {
  tmp <- unclass(parse_bib(cr_cn(dois = x)))[[1]]
  tmp$type <- attr(tmp, "bibtype")
  tmp$key <- attr(tmp, "key")
  as.scitation(tmp)
}

#' @export
as.scitation.list <- function(x) {
  do.call('scitation', x)
}

#' @export
as.scitation.tbl_df <- function(x) {
  out <- list()
  for (i in seq_len(NROW(x))) {
    temp <- x[i,]
    out[[i]] <- scitation(
      temp$type, 
      make_key(temp), 
      doi = temp$DOI, 
      journaltitle = temp$container.title,
      title = temp$title,
      year = get_year(temp, 'created')[1]
    )
  }
  return(out)
}
