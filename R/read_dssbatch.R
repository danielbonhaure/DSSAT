#' Reads data from a single DSSAT batch file
#'
#' @export
#'
#' @param file_name a character vector of length one that contains the name
#' of a single DSSAT batch file
#'
#' @return a tibble containing the data from the DSSAT batch file
#'
#' @examples
#'
#' write_dssbatch(filex='UFGA0601.BMX',trtno=1:4)
#'
#' read_dssbatch()

read_dssbatch <- function(file_name='DSSBatch.V47'){

  batch_file <- read_dssat(file_name,left_justified = 'FILEX')

  return(batch_file)
}