<!-- README.md is generated from README.Rmd. Please edit that file -->



# cavax

<!-- badges: start -->
[![Travis build status](https://travis-ci.org/kjhealy/cavax.svg?branch=master)](https://travis-ci.org/kjhealy/cavax)
<!-- badges: end -->


The `cavax` package contains three datasets, `nyc_license`, `nyc_bites`, and `nyc_zips`. They contain, respectively, data on all licensed dogs in New York city, data on reported dog bites in New York city, and geographical data for New York city at the zip code level.


## Installation

`cavax` is a data package containing a dataset of PBE vaccination exemption rates in California Kindergartens in 2014-15. There are two ways to install it.

### Install direct from GitHub

You can install the beta version of cavax from [GitHub](https://github.com/kjhealy/cavax) with:

``` r
devtools::install_github("kjhealy/cavax")
```

### Installation using `drat`

While using `install_github()` works just fine, it would be nicer to be able to just type `install.packages("cavax")` or `update.packages("cavax")` in the ordinary way. We can do this using Dirk Eddelbuettel's [drat](http://eddelbuettel.github.io/drat/DratForPackageUsers.html) package. Drat provides a convenient way to make R aware of package repositories other than CRAN.

First, install `drat`:


```r
if (!require("drat")) {
    install.packages("drat")
    library("drat")
}
```

Then use `drat` to tell R about the repository where `cavax` is hosted:


```r
drat::addRepo("kjhealy")
```

You can now install `cavax`:


```r
install.packages("cavax")
```

To ensure that the `cavax` repository is always available, you can add the following line to your `.Rprofile` or `.Rprofile.site` file:


```r
drat::addRepo("kjhealy")
```

With that in place you'll be able to do `install.packages("cavax")` or `update.packages("cavax")` and have everything work as you'd expect. 

Note that the drat repository only contains data packages that are not on CRAN, so you will never be in danger of grabbing the wrong version of any other package.


## Loading the data

The package works best with the [tidyverse](http://tidyverse.org/) libraries and the [simple features](https://r-spatial.github.io/sf/index.html) package for mapping.


```r
library(tidyverse)
```

Load the data:


```r
library(cavax)
```

Look at it:


```r
cavax
#> # A tibble: 7,032 x 13
#>      code county name  type  district city  enrollment pbe_pct exempt
#>     <dbl> <chr>  <chr> <chr> <chr>    <chr>      <dbl>   <dbl>  <dbl>
#>  1 1.10e5 ALAME… FAME… PUBL… ALAMEDA… NEWA…        109      13  12.8 
#>  2 6.00e6 ALAME… COX … PUBL… ALAMEDA… OAKL…        115       1   0.87
#>  3 6.00e6 ALAME… LAZE… PUBL… ALAMEDA… OAKL…         40       0   0   
#>  4 1.24e5 ALAME… YU M… PUBL… ALAMEDA… OAKL…         52      10   9.62
#>  5 6.10e6 ALAME… AMEL… PUBL… ALAMEDA… ALAM…        128       2   1.56
#>  6 6.11e6 ALAME… BAY … PUBL… ALAMEDA… ALAM…         70       1   1.43
#>  7 6.09e6 ALAME… DONA… PUBL… ALAMEDA… ALAM…        100       3   3   
#>  8 6.09e6 ALAME… EDIS… PUBL… ALAMEDA… ALAM…         70       1   1.43
#>  9 6.09e6 ALAME… FRAN… PUBL… ALAMEDA… ALAM…         95       1   1.05
#> 10 6.09e6 ALAME… FRAN… PUBL… ALAMEDA… ALAM…         50       2   2   
#> # … with 7,022 more rows, and 4 more variables: med_exempt <dbl>,
#> #   rel_exempt <dbl>, mwc <fct>, kind <fct>
```
