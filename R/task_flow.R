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


