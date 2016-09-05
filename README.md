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

## hello world


```r
scitation(
  "article", 
  'petkun2016', 
  doi = "10.7717/peerj.1126",
  author = "foobar",
  title = "That and this and stuff and things",
  journaltitle = "Stuff And Things",
  year = 2001
)
#> <scitation> 10.7717/peerj.1126 
#>   type:  article
```


```r
library("rcrossref")
res <- cr_works(limit = 3)
as.scitation(res$data) 
```

## Meta

* Please [report any issues or bugs](https://github.com/ropenscilabs/scitations/issues).
* License: MIT
* Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
