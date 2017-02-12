comp <- function(x) Filter(Negate(is.null), x)

se <- function(string, pattern) regmatches(string, regexpr(pattern, string))

rbdf <- function(z) {
  (tmp <- data.table::setDF(
    data.table::rbindlist(z, use.names = TRUE, fill = TRUE)
  ))
}
