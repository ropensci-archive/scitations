#' Coerce things to scitations
#' 
#' @export
#' @param x input
#' @examples \dontrun{
#' # with rcrossref
#' library("rcrossref")
#' res <- cr_works(limit = 10)
#' res$data$type <- "article"
#' as.scitation(res$data) 
#' 
#' # self
#' x <- scitation(
#'  "article", 
#'  'petkun2016', 
#'  doi = "10.7717/peerj.1126",
#'  author = "foobar",
#'  title = "That and this and stuff and things",
#'  journaltitle = "Stuff And Things",
#'  year = 2001
#' )
#' as.scitation(x)
#' 
#' # data.frame
#' df <- scitation_df(x)
#' as.scitation(df)
#' 
#' # a doi
#' as.scitation("10.7717/peerj.1126")
#' }
as.scitation <- function(x) {
  UseMethod("as.scitation")
}

#' @export
as.scitation.default <- function(x) {
  stop("'as.scitation' does not accept objects of class ", class(x))
}

#' @export
as.scitation.scitation <- function(x) x

#' @export
as.scitation.character <- function(x) {
  tmp <- unclass(parse_bib(rcrossref::cr_cn(dois = x)))[[1]]
  tmp$type <- attr(tmp, "bibtype")
  tmp$key <- attr(tmp, "key")
  as.scitation(tmp)
}

#' @export
as.scitation.list <- function(x) {
  lapply(x, as.scitation)
}

#' @export
as.scitation.tbl_df <- function(x) {
  out <- list()
  for (i in seq_len(NROW(x))) {
    temp <- x[i,]
    out[[i]] <- scitation(
      temp$type, 
      make_key(temp), 
      doi = temp$doi, 
      journaltitle = temp$journaltitle,
      title = temp$title,
      year = temp$year,
      #year = get_year(temp, 'created')[1],
      author = temp$author
      #author = make_authors(temp$author)
    )
  }
  return(out)
}

make_authors <- function(z) {
  paste0(
    apply(z[[1]], 1, paste0, collapse = ","),
    collapse = "; "
  )
}
