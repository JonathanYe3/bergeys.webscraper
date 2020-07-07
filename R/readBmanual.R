#' @title
#' Scrape Bergey's manual
#'
#' @description
#' This function scrapes the genus and abstract
#' from articles in Bergey's Manual.
#'
#' @param a,b
#' a and b should be integers where b > a. This
#' parameter defines a range of articles for web
#' scraping.
#'
#' @return
#' A data.frame with genera in the first column
#' and abstracts in the second.
#'
#'@importFrom magrittr %>%
#'@import dplyr
#'
#' @export
readBmanual <- function(a,b){

   x <- c(a:b)
   Bergeys <- c("https://onlinelibrary.wiley.com/doi/10.1002/9781118960608.gbm") %>%
      paste0(sprintf("%05d",x))

   #Get genus
   extract_genus <- function(url){
      data <- xml2::read_html(url)
      f_genus <- data %>%
         rvest::html_nodes(".citation__title i:nth-child(1)") %>%
         rvest::html_text() %>%
         {if(length(.) == 0) NA else .}
   }

   #Get abstract
   extract_paragraph <- function(url){
      data <- xml2::read_html(url)
      f_paragraph <- data %>%
         rvest::html_nodes("#section-1-en p:nth-child(3)") %>%
         rvest::html_text() %>%
         {if(length(.) == 0) NA else .}
   }

   safe_genus <- purrr::possibly(extract_genus, otherwise = NA)
   safe_abstract <- purrr::possibly(extract_paragraph, otherwise = NA)

   genus_name <- purrr::map(Bergeys, safe_genus)
   paragraph_info <- purrr::map(Bergeys, safe_abstract) %>%
      trimws(which = c("left"))
   my_df <- tibble::tibble(genus = genus_name,
                           abstract = paragraph_info)


}
