#' Input data for setting up ESMARConf
#' 
#' @description 
#' @param 
#' @examples 
#' inputs <- set_values(startDate = '2022/02/21',
#'                      endDate = '2022/02/24',
#'                      AbsSubmOpen = '2021/08/01',
#'                      AbsSubmClose = '2021/09/30',
#'                      RegistrationOpen = '2021/10/01',
#'                      AbsDecision = '2021/10/17',
#'                      BursaryOpen = '2021/11/01',
#'                      bursarySum = '100 USD',
#'                      ESMARConfName = 'ESMARConf2022',
#'                      talkLengthMinutes = '15',
#'                      IT_organiser = list(name = 'Neal Haddaway', email = 'neal_haddaway@hotmail.com'),
#'                      YouTubeChannel_URL = 'https://www.youtube.com/channel/UCZy7G3R6bk6AE6Vbfgc0Qhg',
#'                      absSubmissions = 'https://docs.google.com/spreadsheets/d/1LF1XV6Ag-iwb5OjdG8dvRWzzOEYCqjKtHFZTajracIU/edit#gid=0',
#'                      bursary = '',
#'                      registrations = 'https://docs.google.com/spreadsheets/d/1RaX0eDxbj6aJn8ySzfQwjGc0gHudXe8AiFK3dZjHdgo/edit#gid=1676716061',
#'                      registration_form = 'https://forms.gle/QGjmquHsrFd3Hikk7')
set_values <- function(startDate,
                       endDate,
                       AbsSubmOpen,
                       AbsSubmClose,
                       RegistrationOpen,
                       AbsDecision,
                       BursaryOpen,
                       bursarySum = '100 USD',
                       ESMARConfName = NULL,
                       description = NULL,
                       talkLengthMinutes = '15',
                       IT_organiser = NULL,
                       YouTubeChannel_URL = NULL,
                       absSubmissions = NULL,
                       bursary = NULL,
                       registrations = NULL,
                       registration_form = NULL) {
  
  # Convert to time data
  ESMARConf_startDate <- as.Date(startDate, tz="Europe/London")
  ESMARConf_endDate <- as.Date(endDate, tz="Europe/London")
  RegistrationOpen <- as.Date(RegistrationOpen, tz="Europe/London")
  BursaryOpen <- as.Date(BursaryOpen, tz="Europe/London")
  AbsSubmOpen <- as.Date(AbsSubmOpen, tz="Europe/London")
  AbsSubmClose <- as.Date(AbsSubmClose, tz="Europe/London")
  AbsDecision <- as.Date(AbsDecision, tz="Europe/London")
  
  dates <- list(ESMARConf_startDate = startDate,
                ESMARConf_endDate = endDate,
                AbsSubmOpen = AbsSubmOpen,
                AbsSubmClose = AbsSubmClose,
                RegistrationOpen = RegistrationOpen,
                AbsDecision = AbsDecision,
                BursaryOpen = BursaryOpen)
  
  # Generate standard description
  description <- paste0('The Evidence Synthesis Hackathon’s online Evidence Synthesis & Meta-Analysis in R Conference (#ESMARConf', format(Sys.Date(),'%Y'), ') will be held from ', ESMARConf_startDate, ' to ', ESMARConf_endDate, '. Following on form the great success of previous years, we can promise an exciting programme of sessions, workshops, and hackathons that address the following: ⊛ Presentations of packages designed to assist reviewers across evidence synthesis stages, from planning to communication; ⊛ Demonstrations integrating evidence synthesis packages into an interoperable pipeline in R; ⊛ Novel applications of R packages in an evidence synthesis context; ⊛ Automating evidence synthesis in R; ⊛ Assisting novices to R in performing evidence syntheses with the aid of graphical user interfaces')
  
  metadata <- list(bursarySum = bursarySum,
                   ESMARConfName = ESMARConfName,
                   description  = description,
                   talkLengthMinutes = talkLengthMinutes,
                   IT_organiser = IT_organiser,
                   YouTubeChannel_URL = YouTubeChannel_URL,
                   bursary = bursary,
                   absSubmissions = absSubmissions,
                   registrations = registrations,
                   registration_form = registration_form)
  
  input_values <- unlist(c(startDate,
                           endDate,
                           AbsSubmOpen,
                           AbsSubmClose,
                           RegistrationOpen,
                           AbsDecision,
                           BursaryOpen,
                           bursarySum,
                           ESMARConfName,
                           description,
                           talkLengthMinutes,
                           paste0(IT_organiser, collapse = '; '),
                           YouTubeChannel_URL,
                           bursary,
                           absSubmissions,
                           registrations,
                           registration_form))
  input_names <- c('ESMARConf_startDate',
                   'ESMARConf_endDate',
                   'AbsSubmOpen',
                   'AbsSubmClose',
                   'RegistrationOpen',
                   'AbsDecision',
                   'BursaryOpen',
                   'bursarySum',
                   'ESMARConfName',
                   'description',
                   'talkLengthMinutes',
                   'IT_organiser',
                   'YouTubeChannel_URL',
                   'bursary',
                   'absSubmissions',
                   'registrations',
                   'registration_form')
  inputs <- data.frame(label = input_names, values = input_values)
  write.csv(inputs, 'outputs/inputs.csv', row.names = FALSE)
  
  return(list(dates = dates, metadata = metadata))
  
}

