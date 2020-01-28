explore-libraries.R
================
joselynchavez
2020-01-27

Which libraries does R search for packages?

``` r
# adding a comment

# try .libPaths(), .Library

# note that the path is not the same
```

Installed packages

``` r
## use installed.packages() to get all installed packages
## if you like working with data frame or tibble, make it so right away!
## remember to use View(), dplyr::glimpse(), or similar to inspect
library(tidyverse)
```

    ## ── Attaching packages ─────────────────────────────────────────────── tidyverse 1.3.0 ──

    ## ✓ ggplot2 3.2.1     ✓ purrr   0.3.3
    ## ✓ tibble  2.1.3     ✓ dplyr   0.8.3
    ## ✓ tidyr   1.0.0     ✓ stringr 1.4.0
    ## ✓ readr   1.3.1     ✓ forcats 0.4.0

    ## ── Conflicts ────────────────────────────────────────────────── tidyverse_conflicts() ──
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
pkgs <- as_tibble(installed.packages())

## how many packages?

nrow(pkgs)
```

    ## [1] 406

Exploring the packages

``` r
## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on

# pkgs %>% count(LibPath, Priority)
#
# pkgs %>%
#   count(NeedsCompilation) %>%
#   mutate(prop = n/sum(n))
#
# pkgs %>%
#   count(Built) %>%
#   mutate(prop = n/sum(n))
#
# # observe that you probably have a number of packages built in one version and
# other in recent version there are packages that probably have not been updated
# and remain in previous R version


## for tidyverts, here are some useful patterns
# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))
#
# data %>% count(NeedsCompilation)
# data %>% count(NeedsCompilation) %>% mutate(prop = n/sum(n))
#
```

Reflections

``` r
## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?
```

Going further

``` r
## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc)
## use `fields` argument to installed.packages() to get more info and use it!
```
