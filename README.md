
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Ariana

<!-- badges: start -->

[![R-CMD-check](https://github.com/arianahaha/Ariana/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/arianahaha/Ariana/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of Ariana is to computer survival probabilities

## Installation

You can install the development version of Ariana from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("arianahaha/Ariana")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(Ariana)
time = c(1:200)
event = sample(c(0,1), replace=TRUE, size=200)

survival = survival.probs(time, event)
```

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />
