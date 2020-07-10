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

#'@title The bergeys dataset mapped to NCBI taxid
#'
#'@description A \code{data.frame} with NCBI taxonomy IDs in the
#'first column, genera in the second column, and bergey's abstract
#'in the third column.
#'
#'@format A \code{data.frame} with 3 columns, which are
#'\itemize{
#'    \item \code{ncbi_id}: NCBI taxonomy ID
#'    \item \code{genus}: Bacterial genera
#'    \item \code{abstract}: Abstract
#'}
#'
#'@examples
#'data("id_bergeys", package = "bergeys.webscraper")
#'head(id_bergeys)
"id_bergeys"
