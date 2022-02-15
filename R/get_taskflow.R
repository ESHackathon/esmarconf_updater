#' Generate timeline of activities for the run up to ESMARConf
#' 
#' @description 
#' @param inputs named list item output (output$dates) of the function 
#' 'set_values()', consisting of a list of named dates. 
#' @return 
#' @export
#' @examples 
#' dates <- get_taskflow(inputs)
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
  
  # Assemble dates into dataframe with text for taskflow
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
  dates <- tibble::rownames_to_column(dates, "label")
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
  # Extract emails relevant to specific dates based on filenames
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
      split <- unlist(stringr::str_split(dates[4], '; '))
      text1 <- ''
      for (i in 1:length(split)){
        extra <- paste0('<a href="http://htmlpreview.github.io/?https://raw.githubusercontent.com/ESHackathon/esmarconf_updater/main/inst/extdata/Emails/', gsub('.Rmd', '.html', split[i]), '">', gsub('.Rmd', '.html', split[i]), '</a>')
        if(text1 == ''){
          text1 <- paste0(extra)
        } else {
          text1 <- paste0(text1, '; ', extra)
        }
      }
      paste0(dates[3], '. Send emails: ', text1)
    } else {
      dates[3]
    }
  }
  dates$action <- apply(dates, 1, fill)
  output <- dates
  
  # build the dates text section for the taskflow
  text1 <- ''
  for (i in 1:nrow(dates)){
    text1 <- paste0(text1, '\n  <p><span id="rcorners2">', dates[i,2],'</span></p><br>')
  }
  text2 <- ''
  for (i in 1:nrow(dates)){
    text2 <- paste0(text2, '\n  <p><span id="rcorners2">', dates[i,5],'</span></p><br>')
  }
  
  # Build the taskflow graphic as an html file, including links to each rendered file
  html <- paste0('<!DOCTYPE html>
<html>
 <head>
   <style>
     .row {
        display: flex;
      }
      div {
        column-gap: 20px;
      }
      .column1 .column2 {
        flex: 50%;
        padding: 10px;
      }
      .column1 {
        text-align: right;
      }
      .column2 {
        text-align: left;
      }
      #rcorners2 {
        border-radius: 10px;
        border: 2px solid #4fb4a8;
        padding: 20px;
        width: 300px;
      }
    </style>
  </head>
  <body>
    <br>
    <p>Once you have drafted (rendered) the emails, click on the links below to navigate to them.</p>
    <div class="row">
      <div class="column1">', text1, '
      </div>
      <div class="column2">', text2, '
      </div>
  </body>
</html>')
  
  # Save the html output to the outputs folder
  write(html, 'outputs/taskflow.html')
  
  return(output)
  
}



