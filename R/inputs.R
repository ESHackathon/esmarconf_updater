## R data needed

# Email recipient specific information
missingBursInfo <- c('Full name', 'Affiliation')

# Bursary details
bursarySum <- '100 USD'

# $dates
# Date inputs needed
startDate <- '2022/02/21'
endDate <- '2022/02/24'
AbsSubmOpen <- '2021/08/01'
AbsSubmClose <- '2021/09/30'
RegistrationOpen <- '2021/10/01'
AbsDecision <- '2021/10/17'
BursaryOpen <- '2021/11/01'

# Convert to time data
ESMARConf_startDate <- as.Date(startDate, tz="Europe/London")
ESMARConf_endDate <- as.Date(endDate, tz="Europe/London")
RegistrationOpen <- as.Date(RegistrationOpen, tz="Europe/London")
BursaryOpen <- as.Date(BursaryOpen, tz="Europe/London")
AbsSubmOpen <- as.Date(AbsSubmOpen, tz="Europe/London")
AbsSubmClose <- as.Date(AbsSubmClose, tz="Europe/London")
AbsDecision <- as.Date(AbsDecision, tz="Europe/London")

# ESMARConf information
ESMARConfName <- 'ESMARConf2022'
description <- paste0('The Evidence Synthesis Hackathon’s online Evidence Synthesis & Meta-Analysis in R Conference (#ESMARConf', format(Sys.Date(),'%Y'), ') will be held from ', ESMARConf_startDate, ' to ', ESMARConf_endDate, '. Following on form the great success of previous years, we can promise an exciting programme of sessions, workshops, and hackathons that address the following: ⊛ Presentations of packages designed to assist reviewers across evidence synthesis stages, from planning to communication; ⊛ Demonstrations integrating evidence synthesis packages into an interoperable pipeline in R; ⊛ Novel applications of R packages in an evidence synthesis context; ⊛ Automating evidence synthesis in R; ⊛ Assisting novices to R in performing evidence syntheses with the aid of graphical user interfaces')
talkLengthMinutes <- '15'
IT_organiser <- list(name = 'Neal Haddaway', email = 'neal_haddaway@hotmail.com')
YouTubeChannel_URL <- 'https://www.youtube.com/channel/UCZy7G3R6bk6AE6Vbfgc0Qhg'

# Form source data
absSubmissions <- 'https://docs.google.com/spreadsheets/d/1LF1XV6Ag-iwb5OjdG8dvRWzzOEYCqjKtHFZTajracIU/edit#gid=0'
registrations <- 'https://docs.google.com/spreadsheets/d/1RaX0eDxbj6aJn8ySzfQwjGc0gHudXe8AiFK3dZjHdgo/edit#gid=1676716061'
