# esmarconf_updater

This repo is a set of R HTML files designed to automatically update the ESMARConf website annually and in the run up to each event. It takes as inputs presentation submissions from a Google Form, via a Google Sheet that should be screened for acceptance. It then builds a programme and automates contact with submitting authors, presenters, moderators and the organising team.

The funcitons also aim to accept uploaded prerecorded presentations and publish on Zenodo and YouTube (with an embargo), ready for trasncription/verification of (automatic) subtitles.

The update can be scheduled or set to manual updating.

Automated inputs are:
* Submissions in a Google Sheet, receiving input from a Google Form. Requested fields from submitting authors must include:  
  * Full name
  * Email address
  * Affiliation
  * ORCID
  * Twitter handle
  * Submission title
  * Submission abstract
  * Submission session category (see below)
* Uploaded prerecorded talks for accepted submissions, submitted via a Zenodo Communities link for the latest ESAMRConf  
* Registration details from a Google Sheet, receiving inputs from a Google Form requesting participants information as follows:  
  * Full name
  * Email address
  * Affiliation
  * Time zone
  * Primary country of residence (optional, on second page)
  * Gender identity (optional, on second page)
  * Ethnicity (optional, on second page)


Manual inputs are:  
* Acceptance decisions on each submitted abstract by a minimum of two raters, entered into the receiving Google Scheet
* Typology of sessions based on a predetermined list and the submitted talks collectively 
* Allocation of accepted abstracts to a session, specified in the receiving Google Sheet
* List and description of other events under the categories of: 1) hackathons and 2) workshops
* Overarching timings of the event sessions
* Specification of the length of presentations within the livestream (i.e. 7 or 15 minutes)
* Time table of dates for tasks in the run up to and during the conduct of the event
* Email addresses and names for the Organising Team and Moderators of the event
