context("scitations")

test_that("scitations works", {
  aa <-  scitation(
    "article", 
    'petkun2016', 
    doi = "10.7717/peerj.1126",
    author = "foobar",
    title = "That and this and stuff and things",
    journaltitle = "Stuff And Things",
    year = 2001
  )
  
  expect_is(aa, "scitation")
  expect_type(aa$doi, "character")
  expect_type(aa$type, "character")
  expect_type(aa$year, "double")
  expect_match(aa$doi, "10\\.")
  expect_match(aa$doi, "/")
})

test_that("scitations fails well", {
  expect_error(
    scitation("article", doi = "10.7717/peerj.1126"),
    "at least some required fields not given"
  )
})
