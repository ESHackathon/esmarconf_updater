#' 
#' @return Saves event site and tables for event sites to 'outputs' 
#' folder. All four files and the images and assets folders need to be 
#' transferred to a new event folder under the main ESMARConf website.
#' @examples 
#' \dontrun{
#' ESMARConf2022_programme <- 'https://docs.google.com/spreadsheets/d/14TvSmlxznY7BRAM9L2rKbYwZGvYTaGSdwmtwElGz04M/edit#gid=0'
#' update_pastEvent(ESMARConf2022_programme)
#' }
update_pastEvent <- function(presentations){
  
  # Read in abstract submissions
  absSubmission_data <- googlesheets4::read_sheet(ESMARConf2021_programme)
  # Tidy data
  absSubmission_data$YouTube_URL <- paste0('<a href="', absSubmission_data$YouTube_URL, '" target="_blank"><img src="images/youtube.png" width="50"></a>')
  absSubmission_data$title_abstract <- paste0('<b>', absSubmission_data$title, '</b><br><br>', absSubmission_data$abstract)
  talks <- subset(absSubmission_data, type == 'talk')
  workshops <- subset(absSubmission_data, type == 'workshop')
  sessions <- subset(absSubmission_data, type == 'session')
  
  # Create table of accepted talks
  new_data1 <- data.frame(name = talks$name, 
                          title_abstract = talks$title_abstract, 
                          activity = talks$activity, 
                          category = talks$category, 
                          YouTube = talks$YouTube_URL)
  source('R/postEventTalks.R')
  html1 <- dataframe2html(new_data1,
                          tooltips = NULL,
                          hyperlinks = 'TRUE',
                          search_bar = TRUE)
  write(html1, 'outputs/postEventTalks.html')
  
  # Create table of sessions
  new_data2 <- data.frame(title = sessions$title,
                          presenters = sessions$authors,
                          moderator = sessions$name,
                          YouTube = sessions$YouTube_URL)
  source('R/postEventSessions.R')
  html2 <- dataframe2html(new_data2,
                          tooltips = NULL,
                          hyperlinks = 'TRUE',
                          search_bar = TRUE)
  write(html2, 'outputs/postEventSessions.html')
  
  # Create table of workshops
  workshops$authors <- tidyr::replace_na(workshops$authors, '')
  new_data3 <- data.frame(title_abstract = workshops$title_abstract,
                          presenter = workshops$name,
                          guests = workshops$authors,
                          YouTube = workshops$YouTube_URL)
  source('R/postEventWorkshops.R')
  html3 <- dataframe2html(new_data3,
                          tooltips = NULL,
                          hyperlinks = 'TRUE',
                          search_bar = TRUE)
  write(html3, 'outputs/postEventWorkshops.html')
  
  # Update event site
  source('R/update_eventSite.R')
  site <- update_eventSite()
  write(site, paste0('outputs/', ESMARConfName, '.html'))
  
}
