#'@title Dataset of genera and abstracts from Bergey's Manual
#'
#'@description A \code{tibble} with bacterial genera in the first column
#'and its corresponding abstracts in the second column.
#'
#'@format A \code{tibble} with 2 columns, which are
#'\itemize{
#'   \item \code{genus}: Bacterial genera
#'   \item \code{abstract}: Corresponding abstract
#'}
#'
#'@examples
#'data("bergeys", package = "bergeys.webscraper")
#'head(bergeys)
#'
#'@source Web scraped from \url{https://onlinelibrary.wiley.com/browse/book/10.1002/9781118960608/toc}
"bergeys"
