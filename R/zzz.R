comp <- function(x) Filter(Negate(is.null), x)

se <- function(string, pattern) regmatches(string, regexpr(pattern, string))
