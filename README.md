
# plotmpg

<!-- badges: start -->
<!-- badges: end -->

The goal of plotmpg is to provide a function for plotting `displ` and `hwy`
variable of mpg dataset with different color and facet variable

## Installation

You can install the development version of plotmpg from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("shafayetShafee/plotmpg")
```

## Example

This is a basic example which showing the functionality of this one function
package:

To plot a scatterplot of `displ` and `hwy` with `class` as facet variable
and `drv` as colour variable, we can do this

``` r
library(plotmpg)
plot_mpg("class", "drv")
```

