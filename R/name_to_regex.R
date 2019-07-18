#' Convert column names to a regex
#'
#' @export
#'
#' @keywords internal
#'
#' @param cnames A character vector that contains column names
#'
#' @return A character vector with escaped special characters (e.g.
#' parentheses, periods, asterisks)
#'
#' @examples
#'
#' name_to_regex("TB(1)")
#'

name_to_regex <- function(cnames){
  require(stringr)
  require(dplyr)

  regex <- str_replace_all(cnames,c('\\('='\\\\(',
                                    '\\)'='\\\\)',
                                    '\\*'='\\\\*',
                                    '\\.'='\\\\.')) %>%
    str_c('\\.*')
  return(regex)

}