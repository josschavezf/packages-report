#' Which libraries does R search for packages?

# adding a comment

# try .libPaths(), .Library

# note that the path is not the same

#' Installed packages

## use installed.packages() to get all installed packages
## if you like working with data frame or tibble, make it so right away!
## remember to use View(), dplyr::glimpse(), or similar to inspect

pkgs <- as_tibble(installed.packages())

## how many packages?

nrow(pkgs)

#' Exploring the packages

## count some things! inspiration
##   * tabulate by LibPath, Priority, or both
##   * what proportion need compilation?
##   * how break down re: version of R they were built on

pkgs %>% count(LibPath, Priority)

pkgs %>%
  count(NeedsCompilation) %>%
  mutate(prop = n/sum(n))

pkgs %>%
  count(Built) %>%
  mutate(prop = n/sum(n))

# observe that you probably have a number of packages built in one version and
# other in recent version there are packages that probably have not been updated
# and remain in previous R version


## for tidyverts, here are some useful patterns
# data %>% count(var)
# data %>% count(var1, var2)
# data %>% count(var) %>% mutate(prop = n / sum(n))

data %>% count(NeedsCompilation)
data %>% count(NeedsCompilation) %>% mutate(prop = n/sum(n))

#' Reflections

## reflect on ^^ and make a few notes to yourself; inspiration
##   * does the number of base + recommended packages make sense to you?
##   * how does the result of .libPaths() relate to the result of .Library?


#' Going further

## if you have time to do more ...

## is every package in .Library either base or recommended?
## study package naming style (all lower case, contains '.', etc)
## use `fields` argument to installed.packages() to get more info and use it!
