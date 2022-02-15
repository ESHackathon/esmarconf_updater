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
  





# Read in abstract submissions
absSubmission_data <- googlesheets4::read_sheet(absSubmissions)
# Tidy data
affiliation <- gsub('\n', '<br>', stringr::str_wrap(absSubmission_data$affiliation, width = 40))
name <- paste0('<a href="mailto:', absSubmission_data$email, '">', absSubmission_data$name, '</a><br>', affiliation)
absSubmission_data$TwitterHandle <- tidyr::replace_na(absSubmission_data$TwitterHandle, '')
Twitter <- paste0('<a href="https://www.twitter.com/', gsub('@', '', absSubmission_data$TwitterHandle), '" target="_blank"><img src="images/twitter.png" width="50"></a>')
citation <- paste0('<a href="https://www.doi.org/', gsub('@', '', absSubmission_data$DOI), '" target="_blank"><img src="images/zenodo.png" width="100"></a>')
YouTube <- paste0('<a href="', absSubmission_data$YouTube_URL, '" target="_blank"><img src="images/youtube.png" width="50"></a>')
title_abstract <- paste0('<b>', absSubmission_data$title, '</b><br><br>', absSubmission_data$abstract)
new_data <- data.frame(Name = name, Twitter = Twitter, Talk = title_abstract, Watch = YouTube, Zenodo = citation)
# Create table of accepted talks
source('R/dataframe2html.R')
html <- dataframe2html(new_data,
                       tooltips = NULL,
                       hyperlinks = 'TRUE',
                       search_bar = TRUE)



# Read in registration data
registration_data <- googlesheets4::read_sheet(registrations)



