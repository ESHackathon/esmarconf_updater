#' Input data for setting up ESMARConf
#' 
#' @description 
#' @param 
#' @examples 
#' team <- c('Neal Haddaway', 'Jana Stojanova', 'Emily Hennessy', 'Ciara Keenan', 'Matt Grainger', 'Kyle Hamilton', 'Chris Pritchard', 'Alex Bannach-Brown')
#' bios <- c('Neal is a Senior Research Fellow at the Stockholm Environment Institute. His main research interests are around the production and use of environmental evidence in decision-making, by improving the transparency, efficiency and reliability of evidence synthesis as a methodology. Neal is the co-creator of ESMARConf, and has produced several widely used web-based tools for evidence synthesis, including the <a href="https://estech.shinyapps.io/prisma_flowdiagram/" target="_blank">PRISMA2020 flow diagramme tool</a>, and <a href="https://estech.shinyapps.io/citationchaser" target="_blank">citationchaser</a>, for forwards and backwards citation chasing.',
#'           'Jana is a primary investigator of the Interdisciplinary Centre for Health Studies (<a href="CIESAL" target="_blank">CIESAL</a>) and of the University of Valparaiso Cochrane Centre. She is Associate Professor of Pharmacology at the School of Medicine of the University of Valparaíso (part time) and works with the Learning Team at Cochrane (part time). Her primary research interests are study design and evidence synthesis methods for evaluating Therapeutic Drug Monitoring as an intervention. Jana is passionate about science communication, providing training in research methods, contributing to professional communities of practice and supporting early career professionals. She coordinates the monthly <a href="https://iatdmct.org/blog.html" target="_blank">IATDMCT</a> blog and the bimonthly Spanish Journal Club of the Cochrane Early Career Professionals (upcoming events <a href="https://www.cochrane.org/news/cochranes-early-career-professionals-group-upcoming-activities" target="_blank">here</a>).',
#'           'Emily is a post-doctoral research associate at the University of Connecticut in the Systematic Health Action Research Program (SHARP) lab. She is an associate methods editor for the Campbell Collaboration and has served as a quality appraisal consultant for 3ie. Emily is interested in best practice methods for conducting evidence syntheses and issues related to bias, quality, and advanced modeling. Her substantive research focus is on adolescent health promotion and behavior change, specifically addressing substance use disorder prevention and recovery.',
#'           'Ciara Keenan is a Research Fellow at Queen’s University Belfast with an established international reputation in evidence synthesis methodology. Systematic review projects have demonstrated her expertise in the intersections of health, social welfare, disability, and education. Prior to joining Campbell UK and Ireland, Ciara was employed by Kleijnen Systematic Reviews (KSR) to work on projects for the healthcare industry, two of which have informed NICE guidelines.',
#'           'Matt is a Post-doctoral Fellow at the Norwegian Institute for Nature Research. He works with Bayesian graphical models to contextualise scientific evidence for the benefit of decision makers in the realms of biodiversity conservation, sustainability and wildlife management. He is an expert in quantitative and qualitative data synthesis and dealing with high levels of uncertainty. He also has a side-line in the conservation of pheasants, predominately in Southeast Asia (which explains his twitter handle: <a href="https://www.twitter.com/Ed_pheasant" target="_blank">@Ed_pheasant</a>).',
#'           'Kyle is a Ph.D. student at the University of California, Merced in the Psychological Science graduate program. His health psychology research explores perceptions of electronic cigarettes among adults and adolescents. Additionally, he also researches the relationship between adverse childhood experiences and facets of emotion regulation. Kyle has interests in quantitative methods, particularly meta-analysis and publication bias. He is the author of the R package <a href="https://github.com/kylehamilton/MAVIS" target="_blank">MAVIS</a> and the Jamovi module <a href="https://github.com/kylehamilton/MAJOR" target="_blank">MAJOR</a>.',
#'           'Chris is a Senior Lecturer at Nottingham Trent University. He is part of the Institute of Health and Allied Professions within the School of Social Sciences. Whilst his primary role is teaching, he is undertaking research on paramedic recognition and management of male victims of domestic violence. He also teaches on a research methods module within the undergraduate paramedicine curriculum. He has a professional interest in automation and using technology to improve efficiency and reproducibility of research.',
#'           'Alexandra is a postdoc at the Berlin Institute of Health. She develops and implements machine learning and text-mining tools to aid the evidence synthesis research processes. Previous experience involves applying automation tools to systematic reviews of animal experiments to improve human health with large numbers of unique citations. She is passionate about reducing waste in biomedical research, improving reporting quality, and <a href="https://www.anzopenresearch.org/" target="_blank">open science practices</a> across medicine, biomedicine, and computer science.')
#' team_links <- c('https://sei.academia.edu/NealHaddaway',
#'               'https://ciesal.uv.cl/en/investigador/jana-stojanova',
#'               'https://sharp.uconn.edu/people/emily-alden-hennessy-phd/',
#'               'https://www.ciarakeenan.com/',
#'               'https://twitter.com/Ed_pheasant',
#'               'http://kylehamilton.com/',
#'               'https://www.ntu.ac.uk/staff-profiles/social-sciences/chris-pritchard',
#'               'https://www.bihealth.org/en/translation/innovation-enabler/quest-center/teams/project-team-camarades')
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
#'                      registration_form = 'https://forms.gle/QGjmquHsrFd3Hikk7',
#'                      tense = 'past',
#'                      team = team,
#'                      bios = bios,
#'                      team_links = team_links)
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
                       registration_form = NULL,
                       tense = 'future',
                       team = NULL,
                       bios = NULL,
                       team_links = NULL) {
  
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
  if(tense == 'past'){
    description <- paste0('The Evidence Synthesis Hackathon’s online Evidence Synthesis & Meta-Analysis in R Conference (#ESMARConf', format(Sys.Date(),'%Y'), ') was held from ', format(ESMARConf_startDate, "%d"), ' to ', format(ESMARConf_endDate, "%d %B %Y"), '. We saw an exciting programme of sessions and workshops that addressed the following: \n⊛ Presentations of packages designed to assist reviewers across evidence synthesis stages, from planning to communication; \n⊛ Demonstrations integrating evidence synthesis packages into an interoperable pipeline in R; \n⊛ Novel applications of R packages in an evidence synthesis context; \n⊛ Automating evidence synthesis in R; \n⊛ Assisting novices to R in performing evidence syntheses with the aid of graphical user interfaces')
  } else {
    description <- paste0('The Evidence Synthesis Hackathon’s online Evidence Synthesis & Meta-Analysis in R Conference (#ESMARConf', format(Sys.Date(),'%Y'), ') will be held from ', format(ESMARConf_startDate, "%d"), ' to ', format(ESMARConf_endDate, "%d %B %Y"), '. Following on from the great success of previous years, we can promise an exciting programme of sessions, workshops, and hackathons that address the following: \n⊛ Presentations of packages designed to assist reviewers across evidence synthesis stages, from planning to communication; \n⊛ Demonstrations integrating evidence synthesis packages into an interoperable pipeline in R; \n⊛ Novel applications of R packages in an evidence synthesis context; \n⊛ Automating evidence synthesis in R; \n⊛ Assisting novices to R in performing evidence syntheses with the aid of graphical user interfaces')
  }
  
  metadata <- list(bursarySum = bursarySum,
                   ESMARConfName = ESMARConfName,
                   description  = description,
                   talkLengthMinutes = talkLengthMinutes,
                   IT_organiser = IT_organiser,
                   YouTubeChannel_URL = YouTubeChannel_URL,
                   bursary = bursary,
                   absSubmissions = absSubmissions,
                   registrations = registrations,
                   registration_form = registration_form,
                   team = team,
                   bios = bios,
                   team_links = team_links)
  
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
  teamdf <- data.frame(team, bios, team_links)
  inputs <- data.frame(label = input_names, values = input_values)
  write.csv(inputs, 'outputs/inputs.csv', row.names = FALSE)
  write.csv(teamdf, 'outputs/team.csv', row.names = FALSE)
  
  return(list(dates = dates, metadata = metadata, team = teamdf))
  
}

