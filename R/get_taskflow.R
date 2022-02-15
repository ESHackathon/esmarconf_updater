#' Generate timeline of activities for the run up to ESMARConf
#' 
#' @description 
#' @param inputs named list item output (output$dates) of the function 
#' 'set_values()', consisting of a list of named dates. 
#' @return 
#' @export
get_taskflow <- function(inputs) {
  
  # Get and set dates
  # Input dates from set_inputs()
  dates <- inputs$dates
  ESMARConf_startDate <- dates$ESMARConf_startDate
  # Set dependent dates
  Dminus42 <- ESMARConf_startDate - 42
  Dminus28 <- ESMARConf_startDate - 28
  Dminus14 <- ESMARConf_startDate - 14
  Dminus7 <- ESMARConf_startDate - 7
  Dminus3 <- ESMARConf_startDate - 3
  Dminus1 <- ESMARConf_startDate - 1
  Dminus0 <- ESMARConf_startDate
  Dplus1 <- ESMARConf_endDate + 1
  Dplus10 <- ESMARConf_endDate + 10
  
  #ESMARConf_startDate <- as.Date(startDate, tz="Europe/London")
  #ESMARConf_endDate <- as.Date(endDate, tz="Europe/London")
  AbsSubmOpen <- '2021/08/01'
  AbsSubmClose <- '2021/09/30'
  RegistrationOpen <- '2021/10/01'
  AbsDecision <- '2021/10/17'
  BursaryOpen <- '2021/11/01'
  
  dates <- c(AbsSubmOpen=AbsSubmOpen,
             AbsSubmClose=AbsSubmClose,
             RegistrationOpen=RegistrationOpen,
             AbsDecision=AbsDecision,
             BursaryOpen=BursaryOpen,
             Dminus42=Dminus42,
             Dminus28=Dminus28,
             Dminus14=Dminus14,
             Dminus7=Dminus7,
             Dminus3=Dminus3,
             Dminus1=Dminus1,
             ESMARConf_startDate=ESMARConf_startDate,
             ESMARConf_endDate=ESMARConf_endDate,
             Dplus1=Dplus1,
             Dplus10=Dplus10)
  dates <- as.data.frame(dates)
  dates <- tibble::rownames_to_column(t, "label")
  dates$value <- c('Abstract submission opens',
                   'Abstract submission closes',
                   'Registration opens',
                   'Abstract decisions made',
                   'Bursary application opens',
                   '6 weeks before the conference',
                   '1 month before the conference',
                   '2 weeks before the confernece',
                   '1 week before the conference',
                   '3 days before the conference',
                   '1 day before the conference',
                   'Conference start date',
                   'Conference end date',
                   '1 day after the conference',
                   '10 days after the conference')
  dates <- dates[order(dates[2]),]
  get_emails <- function(dates){
    if(identical(grep(dates[1], list.files('inst/extdata/Emails', recursive = TRUE), value = TRUE), character(0)) == TRUE) {
       ''
  } else {
    paste(grep(dates[1], list.files('inst/extdata/Emails', recursive = TRUE), value = TRUE), collapse = '; ')
    }
  }
  dates$emails <- apply(dates, 1, get_emails)
  fill <- function(dates){
    if(dates[4] != ''){
      paste(dates[3], dates[4], sep = '. Send emails: ')
    } else {
      dates[3]
    }
  }
  dates$action <- apply(dates, 1, fill)
  
  # Prepare email file links for rendering
  # Select relevant files to render on a given date based on filename
  email_list <- list.files('inst/extdata/Emails', recursive = TRUE)
  # Emails on action
  onRegistration_emails <- grep('onRegistration', email_list, value = TRUE)
  onBursSubm_emails <- grep('onBursSubm', email_list, value = TRUE)
  onAbsSubm_emails <- grep('onAbsSubm', email_list, value = TRUE)
  onBursDecision_emails <- grep('onBursDecision', email_list, value = TRUE)
  
  # Emails on date
  onAbsSubmOpen_emails <- grep('onAbsSubmOpen', email_list, value = TRUE)
  onAbsSubmClosed_emails <- grep('onAbsSubmClosed', email_list, value = TRUE)
  onAbsDecision_emails <- grep('onAbsDecision', email_list, value = TRUE)
  Dminus42_emails <- grep('Dminus42', email_list, value = TRUE)
  Dminus28_emails <- grep('Dminus28', email_list, value = TRUE)
  Dminus14_emails <- grep('Dminus14', email_list, value = TRUE)
  Dminus7_emails <- grep('Dminus7', email_list, value = TRUE)
  Dminus3_emails <- grep('Dminus3', email_list, value = TRUE)
  Dminus1_emails <- grep('Dminus1', email_list, value = TRUE)
  Dminus0_emails <- grep('Dminus0', email_list, value = TRUE)
  Dplus1_emails <- grep('Dplus1', email_list, value = TRUE)
  Dplus10_emails <- grep('Dplus10', email_list, value = TRUE)
  
  
  # Set up actions on dates
  # Emails
  
  
  
  # Prepare timeline graphic
  # build the dates text section
  text <- ''
  for (i in 1:length(dates)){
    text <- paste0(text, i, " [label = '", dates[[i]], "'];\n")
  }
  
  # Build graphiz plot
  # Create the graph object
  graph <- DiagrammeR::grViz(paste0("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 14]

  # several 'node' statements
  node [shape = box,
        fontsize = 7,
        fontname = Helvetica,
        color = MediumTurquoise]
  ", text, " 

  # several 'edge' statements
  edge [color = MediumTurquoise,  
        style = filled]
  1->2 2->3 3->4 4->5 5->6 6->7 7->8 8->9 9->10 10->11 11->12 12->13 13->14 14->15
}
"))
  graph
  
}



