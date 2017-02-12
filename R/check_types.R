check_types <- function(x) {
  if (!tolower(x$type) %in% names(scitations_types)) {
    stop("type ", x$type, " not in allowed set\nsee ?types", call. = FALSE)
  }
}

check_fields <- function(x) {
  flds <- scitations_types[[tolower(x$type)]]
  # required all given?
  if (!all(
    vapply(flds$required, function(z) any(grepl(z, names(x))), logical(1))
  )) {
    stop("at least some required fields not given", call. = FALSE)
  }
  # any not allowed?
}
