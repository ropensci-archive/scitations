scitations
==========



[![Build Status](https://api.travis-ci.org/ropenscilabs/scitations.png)](https://travis-ci.org/ropenscilabs/scitations)
[![codecov](https://codecov.io/gh/ropenscilabs/scitations/branch/master/graph/badge.svg)](https://codecov.io/gh/ropenscilabs/scitations)


`scitations` - citations for R

## Installation


```r
install.packages("devtools")
devtools::install_github("ropenscilabs/scitations")
```


```r
library("scitations")
```

## make a citation


```r
(cit <- scitation(
  "article", 
  'petkun2016', 
  doi = "10.7717/peerj.1126",
  author = "foobar",
  title = "That and this and stuff and things",
  journaltitle = "Stuff And Things",
  year = 2001
))
#> <scitation> 10.7717/peerj.1126 
#>   type:  article
```

## citations via crossref data


```r
library("rcrossref")
res <- cr_works(limit = 3)
as.scitation(res$data) 
```

## coerce to a data.frame


```r
scitation_df(cit, cit, cit)
#> # A tibble: 3 × 7
#>      type        key                doi author
#>     <chr>      <chr>              <chr>  <chr>
#> 1 article petkun2016 10.7717/peerj.1126 foobar
#> 2 article petkun2016 10.7717/peerj.1126 foobar
#> 3 article petkun2016 10.7717/peerj.1126 foobar
#> # ... with 3 more variables: title <chr>, journaltitle <chr>, year <dbl>
```

or from a list


```r
scitation_df(.list = list(cit, cit, cit))
#> # A tibble: 3 × 7
#>      type        key                doi author
#>     <chr>      <chr>              <chr>  <chr>
#> 1 article petkun2016 10.7717/peerj.1126 foobar
#> 2 article petkun2016 10.7717/peerj.1126 foobar
#> 3 article petkun2016 10.7717/peerj.1126 foobar
#> # ... with 3 more variables: title <chr>, journaltitle <chr>, year <dbl>
```

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/scitations/issues).
* License: MIT
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
