context("sciprint")

x <- scitation(
  "article", 
  'petkun2016', 
  doi = "10.7717/peerj.1126",
  author = "foobar",
  title = "That and this and stuff and things",
  journaltitle = "Stuff And Things",
  year = 2001
)

test_that("sciprint works", {
  expect_is(sciprint(x), "character")
  expect_match(sciprint(x), "2001")
  expect_match(sciprint(x), "foobar")
})
