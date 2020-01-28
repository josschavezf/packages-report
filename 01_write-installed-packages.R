#' ---
#' output: github_document
#' ---

# ' See all your installed packages

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

pkgs <- as.data.frame(installed.packages())

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built
