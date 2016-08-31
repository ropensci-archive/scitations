#' coerce scitations to data.frame
#' 
#' @export
#' @examples 
#' x <- scitation("article", 'petkun2016', doi = "10.7717/peerj.2399")
#' as_df(x)
#' 
#' x <- scitation(
#'   "Article", "cui2016", 
#'   title = "Short and long term representation of an unfamiliar tone distribution",
#'   author = "Anja X. Cui and Charlette Diercks and Nikolaus F. Troje and Lola L. Cuddy", 
#'   journaltitle = "The Journal Title",
#'   date = "2016-08-30")
#' as_df(x)
#' 
#' # from DOI
#' as_df(as.scitation("10.7717/peerj.1126"))
as_df <- function(x) {
  UseMethod("as_df")
}

#' @export
as_df.default <- function(x) {
  stop("no 'as_df' method for ", class(x), call. = FALSE)
}

#' @export
as_df.scitation <- function(x) {
  tibble::as_data_frame(unclass(x))
}

#' @export
as_df.list <- function(x) {
  tibble::as_data_frame(unclass(x))
}
