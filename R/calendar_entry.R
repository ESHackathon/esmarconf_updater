source('R/inputs.R')
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
SUMMARY:#ESMARConf', gsub('-','',format(Sys.Date(),'%Y')),'
URL:https://esmarconf.github.io
DESCRIPTION:', description,'
BEGIN:VALARM
ACTION:DISPLAY
DESCRIPTION:#ESMARConf', gsub('-','',format(Sys.Date(),'%Y')),'
TRIGGER:-PT1H
END:VALARM
END:VEVENT
END:VCALENDAR')
file_output <- paste0('outputs/ESAMRConf',format(Sys.Date(),'%Y'),'.ics')
readr::write_lines(calendar, file_output)
