#' 
#' @return Saves event site and tables for event sites to 'outputs' 
#' folder. All four files and the images and assets folders need to be 
#' transferred to a new event folder under the main ESMARConf website.
#' @examples 
#' \dontrun{
#' ESMARConf2022_programme <- 'https://docs.google.com/spreadsheets/d/1LF1XV6Ag-iwb5OjdG8dvRWzzOEYCqjKtHFZTajracIU/edit#gid=0'
#' ESMARConf2021_programme <- 'https://docs.google.com/spreadsheets/d/14TvSmlxznY7BRAM9L2rKbYwZGvYTaGSdwmtwElGz04M/edit#gid=0'
#' update_pastEvent(presentations = ESMARConf2022_programme,
#'                  presentations_old = ESMARConf2021_programme, 
#'                  site = 'main')
#' }
update_pastEvent <- function(presentations,
                             presentations_old = NULL,
                             site = NULL){
  
  # Bring in set values for latest ESMARConf
  dat <- read.csv(here::here("outputs", "inputs.csv"))
  ESMARConfName <- maditr::vlookup('ESMARConfName', dat, lookup_column = 'label')
  ESMARConf_startDate <- maditr::vlookup('ESMARConf_startDate', dat, lookup_column = 'label')
  ESMARConf_endDate <- maditr::vlookup('ESMARConf_endDate', dat, lookup_column = 'label')
  description <- maditr::vlookup('description', dat, lookup_column = 'label')
  YouTubeChannel_URL <- maditr::vlookup('YouTubeChannel_URL', dat, lookup_column = 'label')
  
  # Read in abstract submissions
  absSubmission_data <- googlesheets4::read_sheet(presentations)
  # Read in old data
  if(is.null(presentations) == FALSE) {
    #previous year
    absSubmission_data_old <- googlesheets4::read_sheet(presentations_old)
    absSubmission_data <- rbind(absSubmission_data, absSubmission_data_old)
  }
  # remove NAs
  absSubmission_data[] <- lapply(absSubmission_data, as.character)
  absSubmission_data[is.na(absSubmission_data)] <- ''
  
  # Tidy data
  absSubmission_data$YouTube_URL <- paste0('<a href="', absSubmission_data$YouTube_URL, '" target="_blank"><img src="images/youtube.png" width="50"></a>')
  absSubmission_data$title_abstract <- paste0('<b>', absSubmission_data$title, '</b><br><br>', absSubmission_data$abstract)
  talks <- subset(absSubmission_data, type == 'talk')
  workshops <- subset(absSubmission_data, type == 'workshop')
  sessions <- subset(absSubmission_data, type == 'session')
  
  #
  if(site == 'main'){
    # Create table of accepted talks
    new_data <- data.frame(name = absSubmission_data$name, 
                           title_abstract = absSubmission_data$title_abstract, 
                           activity = absSubmission_data$activity, 
                           category = absSubmission_data$category, 
                           year = sub('.*ESMARConf', '', sub("\\_.*", "", absSubmission_data$id)),
                           type = absSubmission_data$type,
                           YouTube = absSubmission_data$YouTube_URL)
    source('R/postEventEverything.R')
    html <- dataframe2html(new_data,
                           tooltips = NULL,
                           hyperlinks = 'TRUE',
                           search_bar = TRUE)
    write(html, paste0('outputs/', ESMARConfName, '_maintable.html'))
    return(html)
  }
  
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
  write(html1, paste0('outputs/', ESMARConfName, '_talks.html'))
  
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
  write(html2, paste0('outputs/', ESMARConfName, '_sessions.html'))
  
  # Create table of workshops
  workshops$authors <- tidyr::replace_na(workshops$authors, '')
  new_data3 <- data.frame(title_abstract = workshops$title_abstract,
                          presenter = workshops$name,
                          YouTube = workshops$YouTube_URL)
  source('R/postEventWorkshops.R')
  html3 <- dataframe2html(new_data3,
                          tooltips = NULL,
                          hyperlinks = 'TRUE',
                          search_bar = TRUE)
  write(html3, paste0('outputs/', ESMARConfName, '_workshops.html'))
  
  # Update event site
  source('R/update_eventSite.R')
  site <- update_eventSite()
  write(site, paste0('outputs/', ESMARConfName, '.html'))
  
}
