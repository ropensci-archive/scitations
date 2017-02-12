#' Work types
#' 
#' @export
#' @section Types:
#' \itemize{
#'  \item article - An article in a journal, magazine, newspaper, or other 
#'  periodical which forms a self-contained unit with its own title. 
#'  Required fields: author, title, journal/journaltitle, year/date.
#'  \item book - A single-volume book with one or more authors where the 
#'  authors share credit for the work as a whole. Required fields: author, 
#'  title, year/date. (Also covers BibTeX @inbook).
#'  \item mvbook - A multi-volume book. For backwards compatibility, 
#'  multi-volume books are also supported by the entry type @book. 
#'  Required fields: author, title, year/date.
#'  \item inbook - A part of a book which forms a self-contained unit with 
#'  its own title. Note that the profile of this entry type is different 
#'  from standard BibTeX. Required fields: author, title, booktitle, year/date
#'  \item bookinbook This type is similar to inbook but intended for works 
#'  originally published as a stand-alone book.
#'  \item suppbook - Supplemental material in a book. This type is closely 
#'  related to the inbook entry type.
#'  \item booklet - A book-like work without a formal publisher or sponsoring 
#'  institution. Required fields: author/editor, title, year/date.
#'  \item collection - A single-volume collection with multiple, self-contained 
#'  contributions by distinct authors which have their own title. Required 
#'  fields: editor, title, year/date.
#'  \item mvcollection - A multi-volume collection. Also supported by 
#'  collection. Required fields: editor, title, year/date.
#'  \item incollection - A contribution to a collection which forms a 
#'  self-contained unit with a distinct author and title. Required fields: 
#'  author, editor, title, booktitle, year/date.
#' }
#' @examples
#' work_types()
#' names(work_types())
#' work_types()$book
#' work_types()$book$required
#' work_types()$book$optional
work_types <- function() scitations_types
