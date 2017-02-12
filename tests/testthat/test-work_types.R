context("work_types")

test_that("work_types - xx", {
  x <- work_types()
  
  expect_is(x, "list")
  expect_named(x, c('article', 'book', 'mvbook', 'inbook', 'bookinbook', 
                    'suppbook', 'booklet', 'collection', 'mvcollection', 
                    'incollection'))
  expect_is(x$article, "list")
  expect_named(x$article, c('required', 'optional'))
})

test_that("work_types fails well", {
  expect_error(
    work_types(5),
    "unused argument"
  )
})
