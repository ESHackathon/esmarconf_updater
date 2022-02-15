#' Publish emails by rendering all .Rmd files in Emails folder
#' 
#' @description 
#' @param inputs
#' @return 
#' @export
#' @examples 
#' publish_emails()
publish_emails <- function(){
  
  # Render all emails to their file directories
  blogdown::build_dir(dir = "inst/extdata/Emails", force = TRUE)
  
}