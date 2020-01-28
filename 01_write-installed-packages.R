#' ---
#' output: github_document
#' ---

# ' See all your installed packages

library(tidyverse)
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

#' Export your data

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

library(here)
# readr::write_csv(pkgs, path = here::here("data", "installed-packages.csv"))
