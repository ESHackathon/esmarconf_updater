library(DiagrammeR)

# Create the graph object
graph <- grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [overlap = true, fontsize = 10]

  # several 'node' statements
  node [shape = box,
        fontsize = 7,
        fontname = Helvetica,
        color = MediumTurquoise]
  A; B; C; 

  # several 'edge' statements
  edge [color = MediumTurquoise,  
        style = filled]
  A->B B->C
}
")
graph


# Render all emails to their file directories
blogdown::build_dir(dir = "Emails", force = TRUE)


# Email task order and dates
onAbsSubm_allSubmitting$date <- 'immediate'
onRegistration_registered$date <- 'immediate'
onBursSubm_allApplicants$date <- 'immediate'
onAbsSubmOpen_registered$date <- AbsSubmOpenDate
onAbsSubmClosed_registered$date <- AbsSubmCloseDate
onAbsSubmClosed_allSubmitting$date <- AbsSubmCloseDate
onAbsDecision_allAccepted$date <- AbsDecisionMade
onAbsDecision_allRejected$date <- AbsDecisionMade
Dminus56_allAbsAccepted$date <- ESMARConf_startDate - 56
Dminus28_allAbsAccepted$date <- ESMARConf_startDate - 28
Dminus28_registered$date <- ESMARConf_startDate - 28
Dminus14_allAbsAccepted$date <- ESMARConf_startDate - 14
Dminus14_moderators$date <- ESMARConf_startDate - 14
Dminus7_allAbsAccepted$date <- ESMARConf_startDate - 7
Dminus7_registered$date <- ESMARConf_startDate - 7
Dminus3_moderators$date <- ESMARConf_startDate - 3
Dminus1_allAbsAccepted$date <- ESMARConf_startDate - 1
Dminus1_registered$date <- ESMARConf_startDate - 1
Dminus0_registered$date <- ESMARConf_startDate
Dplus1_allBursAccepted$date <- ESMARConf_endDate + 1
Dplus10_allBursAccepted$date <- ESMARConf_endDate + 10


# Read in abstract submissions
absSubmission_data <- googlesheets4::read_sheet(absSubmissions)
# Tidy data
name <- paste0('<a href="mailto:', absSubmission_data$email, '">', absSubmission_data$name, '</a>')
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
                       search_bar = TRUE,
                       col_width = col_width)

# Read in registration data
registration_data <- googlesheets4::read_sheet(registrations)



