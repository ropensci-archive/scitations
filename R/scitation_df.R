#' Coerce scitations to a data.frame
#' 
#' @export
#' @param ... objects of class \code{scitation}
#' @param .list a list, with only objects of class \code{scitation}
#' @examples
#' #x <- scitation("article", 'petkun2016', doi = "10.7717/peerj.2399")
#' #scitation_df(x)
#' 
#' x <- scitation(
#'   "Article", "cui2016", 
#'   title = "Short and long term representation of an unfamiliar tone distribution",
#'   author = "Anja X. Cui and Charlette Diercks and Nikolaus F. Troje and Lola L. Cuddy", 
#'   journaltitle = "The Journal Title",
#'   date = "2016-08-30")
#'   
#' # any number of inputs of class scitation
#' scitation_df(x, x, x)
#' 
#' # inputs of class scitation in a list
#' scitation_df(.list = list(x, x, x, x))
#' 
#' # from DOI
#' # scitation_df(as.scitation("10.7717/peerj.1126"))
scitation_df <- function(..., .list = NULL) {
  # if (length(list(...)) != 0) {
  #   if (any(vapply(list(...), class, "") != "scitation"))
  #   stop("'scitation_df' only supports objects of class 'scitation'")
  # }
  if (!is.null(.list)) {
    as_df_helper(.list)
  } else {
    xx <- list(...)
    as_df_helper(xx)
  }
}

# helper ----------
as_df_helper <- function(x) {
  if (length(x) != 0) {
    if (any(vapply(x, class, "") != "scitation"))
      stop("'scitation_df' only supports objects of class 'scitation'")
  }
  tibble::as_tibble(
    rbdf(lapply(x, function(z) tibble::as_tibble(unclass(z))))
  )
}
