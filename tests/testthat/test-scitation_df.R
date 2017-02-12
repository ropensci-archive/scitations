context("scitation_df")

xx <-  scitation(
  "article", 
  'petkun2016', 
  doi = "10.7717/peerj.1126",
  author = "foobar",
  title = "That and this and stuff and things",
  journaltitle = "Stuff And Things",
  year = 2001
)

test_that("scitation_df - with ... input", {
  aa <- scitation_df(xx)
  bb <- scitation_df(xx, xx, xx)
  
  expect_is(aa, "tbl_df")
  expect_is(aa, "data.frame")
  expect_is(bb, "tbl_df")
  expect_is(bb, "data.frame")
  
  expect_type(aa$doi, "character")
  expect_type(aa$type, "character")
  expect_type(aa$year, "double")
  expect_match(aa$doi, "10\\.")
  expect_match(aa$doi, "/")
  
  expect_gt(NROW(bb), NROW(aa))
})

test_that("scitation_df fails well", {
  # no inputs
  aa <- scitation_df()
  expect_is(aa, "tbl_df")
  expect_equal(NROW(aa), 0)
  
  # no inputs
  aa <- scitation_df(.list = list())
  expect_is(aa, "tbl_df")
  expect_equal(NROW(aa), 0)
  
  # only supports objects of class scitation
  expect_error(scitation_df(5),
               "'scitation_df' only supports objects of class 'scitation'")
  expect_error(scitation_df(mtcars),
               "'scitation_df' only supports objects of class 'scitation'")
  expect_error(scitation_df(.list = list(a = 5)),
               "'scitation_df' only supports objects of class 'scitation'")
})
