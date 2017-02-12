context("as.scitation")

# test_that("as.scitation - from crossref", {
#   # FIXME - when have internet
# })

# test_that("as.scitation - from tbl_Df", {
#   # FIXME - not working right now
# })

test_that("as.scitation - from object of class scitation - self", {
  x <- scitation("article", 'petkun2016', 
                 doi = "10.7717/peerj.1126",
                 author = "Jane Doe",
                 title = "The best research ever and ever",
                 journaltitle = "Stuff and things",
                 year = 2017)
  aa <- as.scitation(x)
  
  expect_is(aa, "scitation")
  expect_identical(aa, x)
})

test_that("as.scitation - from object of class list", {
  x <- scitation("article", 'petkun2016', 
                 doi = "10.7717/peerj.1126",
                 author = "Jane Doe",
                 title = "The best research ever and ever",
                 journaltitle = "Stuff and things",
                 year = 2017)
  aa <- as.scitation(list(x, x, x))
  
  expect_is(aa, "list")
  expect_is(aa[[1]], "scitation")
})


test_that("as.scitation fails well", {
  expect_error(
    as.scitation(),
    "argument \"x\" is missing, with no default"
  )
  
  expect_error(
    as.scitation(5),
    "'as.scitation' does not accept objects of class numeric"
  )
})
