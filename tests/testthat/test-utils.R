context("utils")

x <- scitation(
 "article", 
 'petkun2016', 
 doi = "10.7717/peerj.1126",
 author = "foobar",
 title = "That and this and stuff and things",
 journaltitle = "Stuff And Things",
 year = 2001
)
df <- scitation_df(as.scitation(x))

test_that("make_key", {
  expect_equal(make_key(df), "foobar2001")
  expect_error(make_key(), "argument \"x\" is missing")
})


test_that("get_year", {
  expect_equal(get_year(list(a = 2009), "a"), "2009")
})

test_that("parse_bib", {
  bref <- utils::bibentry(
    bibtype = "Book",
    title = "Bootstrap Methods and Their Applications",
    author = as.person("Anthony C. Davison [aut], David V. Hinkley [aut]"),
    year = "1997",
    publisher = "Cambridge University Press",
    address = "Cambridge",
    isbn = "0-521-57391-2",
    url = "http://statwww.epfl.ch/davison/BMA/",
    key = "boot-book"
  )
  str <- paste0(unclass(utils::toBibtex(bref)), collapse = " ")
  aa <- parse_bib(str)
  expect_is(aa, "bibentry")
})
