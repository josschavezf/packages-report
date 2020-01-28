01\_write-installed-packages.R
================
joselynchavez
2020-01-27

See all your installed
    packages

``` r
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
## create a data frame of your installed packages
## hint: installed.packages() is the function you need

pkgs <- as.data.frame(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

pkgs <- dplyr::as_tibble(pkgs %>% select(Package, LibPath, Version, Priority,  Built))
```

Export your data

``` r
## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

library(here)
```

    ## here() starts at /Users/joselynchavez/Documents/rstudioconf2020/packages-report

``` r
# readr::write_csv(pkgs, path = here::here("data", "installed-packages.csv"))
```
