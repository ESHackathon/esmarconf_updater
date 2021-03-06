#' Build calendar entry
#' 
#' @description
#' @param type = c('event_general', 'tasks', 'sessions', 'workshops', 'event_all')
#' @return Saves a calendar entry to the outputs folder.
#' @examples 
#' set_calendar(inputs)
set_calendar <- function(inputs,
                         taskflow_output,
                         type = 'event_all'){
  
  # Entry for the whole event
  if(any(grepl('event_general', type) == TRUE) == TRUE || any(grepl('event_all', type) == TRUE)){
    calendar <- paste0('BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//ical.marudot.com//iCal Event Maker
CALSCALE:GREGORIAN
BEGIN:VTIMEZONE
TZID:Europe/London
LAST-MODIFIED:', gsub('/','',Sys.Date()), 'T015911Z
TZURL:http://tzurl.org/zoneinfo-outlook/Europe/London
X-LIC-LOCATION:Europe/London
BEGIN:DAYLIGHT
TZNAME:BST
TZOFFSETFROM:+0000
TZOFFSETTO:+0100
DTSTART:19700329T010000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
BEGIN:STANDARD
TZNAME:GMT
TZOFFSETFROM:+0100
TZOFFSETTO:+0000
DTSTART:19701025T020000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTSTAMP:', gsub('-','',Sys.Date()), 'T190205Z
UID:1641927684572-17858@ical.marudot.com
DTSTART;TZID=Europe/London:', gsub('/','',startDate), 'T080000
DTEND;TZID=Europe/London:', gsub('/','',endDate), 'T170000
SUMMARY:#', ESMARConfName,'
URL:https://esmarconf.github.io
DESCRIPTION:', description,'
BEGIN:VALARM
ACTION:DISPLAY
TRIGGER:-PT1H
END:VALARM
END:VEVENT
END:VCALENDAR')
    file_output <- paste0('outputs/',inputs$metadata$ESMARConfName,'.ics')
    readr::write_lines(calendar, file_output)
  }
  
  # Entry for tasks generated by get_taskflow and provided in the dataframe output
  if(any(grepl('tasks', type) == TRUE) == TRUE || any(grepl('event_all', type) == TRUE)){
    
    for(i in 1:nrow(taskflow_outputs)){
      
      data <- taskflow_outputs
      
      calendar <- paste0('BEGIN:VCALENDAR
VERSION:2.0
PRODID:-//ical.marudot.com//iCal Event Maker
CALSCALE:GREGORIAN
BEGIN:VTIMEZONE
TZID:Europe/London
LAST-MODIFIED:', gsub('/','',Sys.Date()), 'T015911Z
TZURL:http://tzurl.org/zoneinfo-outlook/Europe/London
X-LIC-LOCATION:Europe/London
BEGIN:DAYLIGHT
TZNAME:BST
TZOFFSETFROM:+0000
TZOFFSETTO:+0100
DTSTART:19700329T010000
RRULE:FREQ=YEARLY;BYMONTH=3;BYDAY=-1SU
END:DAYLIGHT
BEGIN:STANDARD
TZNAME:GMT
TZOFFSETFROM:+0100
TZOFFSETTO:+0000
DTSTART:19701025T020000
RRULE:FREQ=YEARLY;BYMONTH=10;BYDAY=-1SU
END:STANDARD
END:VTIMEZONE
BEGIN:VEVENT
DTSTAMP:', gsub('-','',Sys.Date()), 'T190205Z
UID:1641927684572-17858@ical.marudot.com
DTSTART;TZID=Europe/London:', gsub('-','',data[i,2]), 'T080000
DTEND;TZID=Europe/London:', gsub('-','',data[i,2]), 'T170000
SUMMARY:', ESMARConfName, ' task reminder: ', dates[i,3],'
URL:https://esmarconf.github.io
DESCRIPTION:', dates[i,5],'
BEGIN:VALARM
ACTION:DISPLAY
TRIGGER:-PT1H
END:VALARM
END:VEVENT
END:VCALENDAR')
      file_output <- paste0('outputs/',ESMARConfName, ' task reminder - ', dates[i,3],'.ics')
      readr::write_lines(calendar, file_output)
    }
  }
  
  # Entry for conference sessions
  if(any(grepl('sessions', type) == TRUE) == TRUE || any(grepl('event_all', type) == TRUE)){
    #need to design how to build in session entries based on draft programme
  }
  
  # Entry for conference workshops
  if(any(grepl('workshops', type) == TRUE) == TRUE){
    #need to design how to build in workshop entries based on draft programme
  }

}
