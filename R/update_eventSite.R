#' Update ESMARConf event page
#' 
#' @description 
#' @param 
#' @return 
#' @export
#' @examples 
#' site <- update_eventSite()
update_eventSite <- function(google_analytics = ''){
  
  dat <- read.csv(here::here("outputs", "inputs.csv"))
  ESMARConfName <- maditr::vlookup('ESMARConfName', dat, lookup_column = 'label')
  ESMARConf_startDate <- maditr::vlookup('ESMARConf_startDate', dat, lookup_column = 'label')
  ESMARConf_endDate <- maditr::vlookup('ESMARConf_endDate', dat, lookup_column = 'label')
  description <- maditr::vlookup('description', dat, lookup_column = 'label')
  YouTubeChannel_URL <- maditr::vlookup('YouTubeChannel_URL', dat, lookup_column = 'label')
  registration_form <- maditr::vlookup('registration_form', dat, lookup_column = 'label')
  
  html <- paste0('<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <!-- SEO tags -->
    <meta name="title" content=', ESMARConfName, '>
    <meta name="description" content=', description, '>
    <meta name="keywords" content="evidence synthesis, meta-analysis, systematic review, R, Rstats R stats, R language, review tools, systematic review tools, machine learning, review automation, systematic review software, automated systematic reviews, systematic review efficiency, scoping review, rapid review, screening, evidence synthesis hackathon, eshackathon, hackathon">
    <meta name="robots" content="index, follow">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="language" content="English">
    <meta name="author" content="Neal R Haddaway">
    
    <!-- Open Graph/Twitter tags -->
    <meta property="og:title" content=', ESMARConfName, '>
    <meta property="og:type" content="article" />
    <meta property="og:description" content=', description, '>
    <meta property="og:image" content="https://raw.githubusercontent.com/ESHackathon/eshackathon.github.io/master/assets/images/events/ESMARConfwebsite.png">
    <meta property="og:url" content=', paste0("https://esmarconf.github.io/events/", ESMARConfName, ".html"), '>
    <meta name="twitter:card" content="summary_large_image">

    <title>', paste0(ESMARConfName, " - Evidence Synthesis and Meta-Analysis in R Conference ", substr(ESMARConfName, 10, 13)), '</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" >
    <!-- Icon -->
    <link rel="stylesheet" type="text/css" href="assets/fonts/line-icons.css">
    <!-- Slicknav -->
    <link rel="stylesheet" type="text/css" href="assets/css/slicknav.css">
    <!-- Nivo Lightbox -->
    <link rel="stylesheet" type="text/css" href="assets/css/nivo-lightbox.css" >
    <!-- Animate -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">
    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <!-- Responsive Style -->
    <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
    
    ', google_analytics,'

  </head>
  <body>

    <!-- Header Area wrapper Starts -->
    <header id="header-wrap">
      <!-- Navbar Start -->
      <nav class="navbar navbar-expand-lg fixed-top scrolling-navbar">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              <span class="icon-menu"></span>
              <span class="icon-menu"></span>
              <span class="icon-menu"></span>
            </button>
            <a href="index.html" class="navbar-brand"><img src="assets/img/logo.png" alt=""></a>
          </div>
          <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="navbar-nav mr-auto w-100 justify-content-end">
              <li class="nav-item active">
                <a class="nav-link" href="#header-wrap">
                  Home
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#about">
                  About
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#recordings">
                  Recordings
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#hackathons">
                  Hackathons
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#team">
                  Team
                </a>
              </li>
            </ul>
          </div>
        </div>

        <!-- Mobile Menu Start -->
        <ul class="mobile-menu">
          <li>
            <a class="page-scrool" href="#header-wrap">Home</a>
          </li>
          <li>
            <a class="page-scrool" href="#about">About</a>
          </li>
          <li>
             <a class="page-scroll" href="#recordings">Recordings</a>
          </li>
          <li>
            <a class="page-scroll" href="#hackathons">Hackathons</a>
          </li>
          <li>
            <a class="page-scroll" href="#team">Team</a>
          </li>
        </ul>
        <!-- Mobile Menu End -->

      </nav>
      <!-- Navbar End -->


    </header>
    <!-- Header Area wrapper End -->
    
    <!-- Main Carousel Section Start -->
      <div id="main-slide" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#main-slide" data-slide-to="0" class="active"></li>
          <li data-target="#main-slide" data-slide-to="1"></li>
          <li data-target="#main-slide" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item">
            <img class="d-block w-100" src="assets/img/slider/slide1.png" alt="First slide">
            <div class="carousel-caption d-md-block">
              <p class="fadeInUp wow" data-wow-delay=".6s">Evidence Synthesis and Meta-Analysis in R Conference ', substr(ESMARConfName, 10, 13), '</p>
              <h1 class="wow bounceIn heading" data-wow-delay=".7s">', ESMARConfName, '</h1>
              <a href="#about" class="fadeInUp wow btn btn-border btn-lg">Learn more</a>
            </div>
          </div>
          <div class="carousel-item active">
            <img class="d-block w-100" src="assets/img/slider/slide2.jpg" alt="Second slide">
            <div class="carousel-caption d-md-block">
              <p class="fadeInUp wow" data-wow-delay=".6s">', paste0(format(as.Date(ESMARConf_startDate), "%d"), ' to ', format(as.Date(ESMARConf_endDate), "%d %B %Y")), '</p>
              <h1 class="wow fadeInDown heading" data-wow-delay=".4s">Check out the ', ESMARConfName, ' presentations and workshops online</h1>
              <a href="#recordings" class="fadeInLeft wow btn btn-common btn-lg" target="_blank">To the recordings</a>
            </div>
          </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="assets/img/slider/slide3.jpg" alt="Third slide">
            <div class="carousel-caption d-md-block">
              <p class="fadeInUp wow" data-wow-delay=".6s">Find out more about the ', ESMARConfName, '</p>
              <h1 class="wow fadeInUp heading" data-wow-delay=".6s">Organising Team</h1>
              <a href="#team" class="fadeInUp wow btn btn-common btn-lg" target="_blank">Meet the team</a>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#main-slide" role="button" data-slide="prev">
          <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-left"></i></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#main-slide" role="button" data-slide="next">
          <span class="carousel-control" aria-hidden="true"><i class="lni-chevron-right"></i></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
      <!-- Main Carousel Section End -->
    
    <!-- About Section Start -->
    <section class="countdown-timer section-padding" id="about">
      <div class="container">
        <div class="row text-center">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="section-title-header text-center">
            <br>
            <br>
            <br>
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">#', ESMARConfName, '</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">', gsub("⊛ ", "\n⊛ ", description), '<br><br>ESMARConf began in 2021 and is coordinated by the <a href="https://www.eshackathon.org" target="_blank">Evidence Synthesis Hackathon</a>.</p>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <br><br>
              <p class="wow fadeInDown" data-wow-delay="0.2s">If you like what we are doing, please consider <b>donating</b> to support us keeping ESMARConf entirely free and open to all! You can donate safely and securely through our fiscal host, the Open Collective. All of our accounts are open and transparent. Read more by clicking the button below.</p><br>
              <a href="https://opencollective.com/esmarconf#section-contribute" class="btn btn-common wow fadeInUp" download>Donate</a>
              <br>
              <br>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="about-item">
              <img class="img-fluid" src="assets/img/about/img1.png" alt="">
              <div class="about-text">
                <h3><a href="#about">What is ESMARConf?</a></h3>
                <p>ESMARConf is an online conference series focusing on tools and techniques for conducting and reporting rigorous evidence syntheses and meta-analysis using the statistical software R.</p>
                <a class="btn btn-common btn-rm" href="https://esmarconf.github.io">Learn More</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="about-item">
              <img class="img-fluid" src="assets/img/about/img2.png" alt="">
              <div class="about-text">
                <h3><a href="https://www.eshackathon.org" target="_blank">Who runs ESMARConf events?</a></h3>
                <p>ESMARConf events are coordinated by the <a href="https://www.eshackathon.org" target="_blank">Evidence Synthesis Hackathon</a> and organised by a team of volunteers and experts in evidence synthesis, meta-analysis and R.</p>
                <a class="btn btn-common btn-rm" href="https://www.eshackathon.org" target="_blank">Read More</a>
              </div>
            </div>
          </div>
          <div class="col-xs-12 col-md-6 col-lg-4">
            <div class="about-item">
              <img class="img-fluid" src="assets/img/about/img3.jpg" alt="">
              <div class="about-text">
                <h3><a href="https://www.eshackathon.org" target="_blank">Accessibility and C-o-C</a></h3>
                <p>Find out more about our committment to accessibility across our events, our Code-of-Conduct, and read more about our complaints procedure here.</p>
                <a class="btn btn-common btn-rm" href="https://www.eshackathon.org/about/accessibility_and_codeofconduct.html" target="_blank">Read More</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- About Section End -->

    <!-- Counter Area Start-->
    <section class="counter-section section-padding">
      <div class="container">
        <div class="row">
          <!-- Counter Item -->
          <div class="col-md-6 col-lg-4 col-xs-12 work-counter-widget text-center">
            <div class="counter wow fadeInRight" data-wow-delay="0.3s">
              <div class="icon"><i class="lni-map"></i></div>
              <p>Streamed live to</p>
              <a href="', YouTubeChannel_URL, '" target="_blank">YouTube</a>
            </div>
          </div>
          <!-- Counter Item -->
          <div class="col-md-6 col-lg-4 col-xs-12 work-counter-widget text-center">
            <div class="counter wow fadeInRight" data-wow-delay="0.6s">
              <div class="icon"><i class="lni-timer"></i></div>
              <p>', paste0(format(as.Date(ESMARConf_startDate), "%d"), ' to ', format(as.Date(ESMARConf_endDate), "%d %B %Y")), '</p>
            </div>
          </div>
          <!-- Counter Item -->
          <div class="col-md-6 col-lg-4 col-xs-12 work-counter-widget text-center">
            <div class="counter wow fadeInRight" data-wow-delay="0.9s">
              <div class="icon"><i class="lni-users"></i></div>
              <p>Entirely FREE event</p>       
              <a href="#recordings" target="_blank">Recordings available for ever!</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Counter Area End-->

    <!-- Schedule Section Start -->
    <section id="programme" class="schedule section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">#ESMARConf2022 Programme</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">This year’s ESMARConf promises to be a very exciting event, full of presentations, panel discussions, training workshops, and hackathons. Check out more in the programme below and remember to register!</p>
              <a href="https://forms.gle/QGjmquHsrFd3Hikk7" class="fadeInLeft wow btn btn-common btn-lg" target="_blank">Register here</a>
              <br>
              <br>
              <br>
              <p class="wow fadeInDown" data-wow-delay="0.2s">This year, we are delighted to be supported by a grant from <a href="https://eventfund.codeforscience.org/announcing-the-new-cohort-of-event-fund-grantees/#evidence-synthesis-and-meta-analysis-in-r-conference-2022-esmarconf2022" target="_blank">Code for Science & Society</a> that will enable us to provide two types of buraries.<br>
              <em>Carer bursaries:</em> 30 bursaries of 100 USD to cover costs of a carer for dependents or hire of an external private space to join the conference (e.g. hotel room).<br>
              <em>Resource constraint bursaries:</em> 50 bursaries of 100 USD to cover/contribute towards small equipment hire/purchase (e.g. laptop hire, headphone/microphone hire/purchase), venue hire (e.g. hotel room for private workspace), internet access (service provision or internet cafe), other interpretation (sign interpretation will already be provided for all talks).<br>
              <br>
              If you would like to apply for one of these bursaries to support your attendance of ESMARConf2022, please submit an application using the form below:  If you would like to have support to make the event more accessible, please <a href="mailto:neal.haddaway@sei.org" target="_blank">email us!</a></p>
              <a href="https://forms.gle/p6oEhR4dCiK6bPWu9" class="fadeInLeft wow btn btn-common btn-lg" target="_blank">Apply for a bursary</a>
              <div><br><br>
              <p>Why not tell others about ESMARConf2022 by Tweeting about the conference?<br><a href="https://twitter.com/intent/tweet?button_hashtag=esmarconf2022&ref_src=twsrc%5Etfw" class="twitter-hashtag-button" data-width="500" data-height="1000" data-show-count="false">Tweet #esmarconf2022</a><br><br></p></div>
            </div>
          </div>
        </div>
        <div class="schedule-area row wow fadeInDown" data-wow-delay="0.3s">
          <div class="schedule-tab-title col-md-3 col-lg-3 col-xs-12">
            <div class="table-responsive">
              <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="monday-tab" data-toggle="tab" href="#monday" role="tab" aria-controls="monday" aria-expanded="true">
                    <div class="item-text">
                      <h4>Monday</h4>
                      <h5>21 February</h5>
                    </div>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="tuesday-tab" data-toggle="tab" href="#tuesday" role="tab" aria-controls="tuesday">
                    <div class="item-text">
                      <h4>Tuesday</h4>
                      <h5>22 February</h5>
                    </div>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="wednesday-tab" data-toggle="tab" href="#wednesday" role="tab" aria-controls="wednesday">
                    <div class="item-text">
                      <h4>Wednesday</h4>
                      <h5>23 February</h5>
                    </div>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="thursday-tab" data-toggle="tab" href="#thursday" role="tab" aria-controls="thursday">
                    <div class="item-text">
                      <h4>Thursday</h4>
                      <h5>24 February</h5>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
          <div class="schedule-tab-content col-md-9 col-lg-9 col-xs-12 clearfix">
            <div class="tab-content" id="myTabContent">
              <div class="tab-pane fade show active" id="monday" role="tabpanel" aria-labelledby="monday-tab">
                <div id="accordion">
                  <div class="card">
                    <div id="headingOne">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">               
                        <span class="time">08:00 - 17:00 (GMT)</span>
                        <h4>Workshop 1: Introduction to meta-analysis in R</h4>
                        <h5 class="name">Wolfgang Viechtbauer</h5>
                      </div>
                    </div>
                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                      <div class="card-body">
                        <p>We will start by looking at methods for quantifying the results from individual studies included in a meta-analysis in terms of various effect size or outcome measures (e.g., raw or standardized mean differences, ratios of means, risk/odds ratios, risk differences, correlation coefficients). We will then delve into methods for combining the observed outcomes (i.e., via equal- and random-effects models) and for examining whether the outcomes depend on the characteristics of the studies from which they were derived (i.e., via meta-regression and subgrouping). A major problem that may distort the results of a meta-analysis is publication bias (i.e., when the studies included in a meta-analysis are not representative of all the relevant research that has been conducted on a particular topic). Therefore, current methods for detecting and dealing with publication bias will be discussed next. Finally, time permitting, we will look at some advanced methods for meta-analysis to handle more complex data structures that frequently arise in practice, namely when studies contribute multiple effect sizes to the same analysis, leading to dependencies in the data that need to be accounted for (via multilevel/multivariate models and robust variance estimation).</p>
                        <div class="location">
                          <a href="https://www.wvbauer.com/doku.php/workshop_ma_esmarconf" target="_blank">Find out more here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingTwo">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">                
                        <span class="time">10:30 - 12:30 (GMT)</span>
                        <h4>Workshop 2: Searching for studies in meta-analyses and evidence syntheses</h4>
                        <h5 class="name">Alison Bethel</h5>
                      </div>
                    </div>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
                      <div class="card-body">
                        <p>This workshop will provide an overview of why searching for studies in a meta-analysis or other evidence synthesis is a vital step that should be carefully planned and conducted. It will highlight methods that can be used to improve comprehensiveness, reduce risk of bias, and increase your working efficiency.</p>
                        <div class="location">
                          <a href="https://sei-org.zoom.us/meeting/register/tZUtf-yhqDMvGd1SufneSSpzUZA8HYgvkZaD" target="_blank">Register here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="tuesday" role="tabpanel" aria-labelledby="tuesday-tab">
                <div id="accordion2">
                  <div class="card">
                    <div id="headingOne1">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseOne1" aria-expanded="false" aria-controls="collapseOne1">                   
                        <span class="time">09:30 - 10:00 (GMT)</span>
                        <h4>Welcome and notices</h4>
                        <h5 class="name">Neal Haddaway</h5>
                      </div>
                    </div>
                    <div id="collapseOne1" class="collapse show" aria-labelledby="headingOne1" data-parent="#accordion2">
                      <div class="card-body">
                        <p>Welcome to the official opening of #ESMARConf2022!</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingTwo2">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseTwo2" aria-expanded="false" aria-controls="collapseTwo2">                    
                        <span class="time">10:00 - 10:30 (GMT)</span>
                        <h4>Keynote presentation: Synthesizing Communities: Improving Evidence Synthesis through Collaboration</h4>
                        <h5 class="name">Terri Pigott</h5>
                      </div>
                    </div>
                    <div id="collapseTwo2" class="collapse" aria-labelledby="headingTwo2" data-parent="#accordion2">
                      <div class="card-body">
                        <p>We are delighted and honoured to welcome Terri Pigott to give our conference opening lecture this year. In her talk, Terri will reflect on her 30+ years in research on evidence synthesis and discuss the importance of interdisciplinary collaborations to improve the field.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingThree2">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseThree2" aria-expanded="false" aria-controls="collapseThree2">               
                        <span class="time">10:45 - 11:45 (GMT)</span>
                        <h4>Special session 1: Review processes from A to Z (part 1)</h4>
                        <h5 class="name">Moderator: Emily Hennessy</h5>
                      </div>
                    </div>
                    <div id="collapseThree2" class="collapse" aria-labelledby="headingThree2" data-parent="#accordion2">
                      <div class="card-body">
                        <p><u>Using state-of-the-art transformer models to automate text classification in R</u><br>
                        <i>Bronwen Hunter</i><br>
                        The utilisation of automated classification tools from the field of Natural Language Processing (NLP) can massively decrease the amount of time required for the article screening stage of evidence synthesis. To achieve high accuracy, models often require huge volumes of ‘gold-standard’ labelled training data, which can be expensive and time-consuming to produce. As a result, ‘transfer learning’, in which NLP models, pre-trained on large corpora, are downloaded and finetuned on a smaller number of hand-labelled texts, is an increasingly popular method for achieving high-performance text classification. The availability of state-of-the-art transformer models via the open source ‘hugging face’ library has also improved the accessibility of this approach. However, materials outlining how to make use of such resources in R are limited. At ESMARCONF 2022, I will introduce and demonstrate how transfer learning can be carried out in R and seamlessly integrated with data collection from academic databases and internet sources.</p>
                        <br>
                        <p><u>Towards an automated Research Weaving</u><br>
                        <i>Elina Takola</i><br>
                        We here present a systematic study on the concept of ecological niche. Ecological niche has been described in various ways; from habitat to role and from biotope to hypervolume. Although it has many different definitions, it remains one of the most fundamental concepts in Ecology. Our aim is to implement the Research Weaving framework on a large body of literature, relevant to the ecological niche in order to illustrate how this concept evolved since its introduction in the early 20th century. We analysed over 29,000 publications using systematic maps and bibliometric webs. Our synthesis consisted of 8 components: phylogeny, type/validity, temporal trends, spatial patterns, contents, terms, authors, citations. We used bibliometric analyses, quantitative analyses of publication metadata and text mining algorithms. This integrative presentation of the development of the ecological niche concept provides an overview of how dynamics changed over time. It also allows us to detect knowledge gaps, while presenting a systematic summary of existing knowledge. To our knowledge, this is one of the first projects that implements the research weaving framework using exclusively automated processes.</p>
                        <br>
                        <p><u>citationchaser: a tool for transparent and efficient forwards and backwards citation chasing in systematic searching</u><br>
                        <i>Neal Haddaway</i><br>
                        Systematic searching aims to find all possibly relevant research records from multiple sources to collate an unbiased and comprehensive set of bibliographic records. Along with bibliographic databases, systematic reviewers use a variety of additional methods to minimise procedural bias, including assessing records that are cited by and that cite a set of articles of known relevance (citation chasing). Citation chasing exploits connections between research articles to identify relevant records for consideration in a review by making use of explicit mentions of one article within another. Citation chasing is a popular supplementary search method because it helps to build on the work of primary research and review authors. It does so by identifying potentially relevant studies that might otherwise not be retrieved by other search methods; for example, because they did not use the review authors’ search terms in the specified combinations in their titles, abstracts or keywords. Here, we describe an open source tool that allows for rapid forward and backward citation chasing. We introduce citationchaser, an R package and Shiny app for conducting forward and backward citation chasing from a starting set of articles. We describe the sources of data, the backend code functionality, and the user interface provided in the Shiny app.</p>
                        <br>
                        <p><u>An Evidence Gap Map Shiny Application for Effect Size or Summary Level Data</u><br>
                        <i>Joshua Polanin</i><br>
                        Evidence Gap Maps (EGMs) provide a structured visual framework designed to identify areas where research has been conducted, and where research has not been conducted. Traditional EGMs combine at least two characteristics—e.g., outcome measurement, research design—mapped onto x-axis and y-axis to form a grid. EGMs can be in table, graph, or chart format. The intersections of the axes on the grid, at minimum, contain information on the number of studies conducted for the combination of the levels of the characteristics. We created this Shiny app to ease the construction of EGMs, in the form of a graph. The app allows users to upload their dataset, and use point-and-click options to summarize data for combinations of factors, and then create an EGM using the ggplot2 package in R (Wickham, 2011). We also provide an example dataset for instructional purposes. Further, the app will output R syntax used to create the plot; users can download the syntax and customize the graph if needed.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFour2">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFour2" aria-expanded="false" aria-controls="collapseFour2">                  
                        <span class="time">12:00 - 13:00 (GMT)</span>
                        <h4>Special Session 2: Review processes from A to Z (part 2)</h4>
                        <h5 class="name">Moderator: Emily Hennessy</h5>
                      </div>
                    </div>
                    <div id="collapseFour2" class="collapse" aria-labelledby="headingFour2" data-parent="#accordion2">
                      <div class="card-body">
                        <p><u>Automating data-cleaning and documentation of extracted data using interactive R-markdown notebooks</u><br>
                        <i>Steph Zimsen</i><br>
                        At the Institute for Health Metrics and Evaluation, we conduct ~40 systematic reviews each year. In our general process to search > screen > extract > analyze, we found we need an intervening step: cleaning extracted data before analysis. The problem arises from a feature of our workflow: one person extracts the data, while another analyzes. Clean-up falls through the gap as we hand off data. Analysts must then spend time cleaning, though the extractor is far more familiar with the dataset. To work faster with fewer errors, we developed a stepwise cleaning checklist, then wrote code modules to fix common problems. But juggling Excel and R and a checklist still takes time and attention. To streamline further, we are developing a systematic solution: an interactive R-markdown notebook to take in parameters of the specific extraction dataset; clean and validate the data; and return a new cleaned dataset. We are testing with a recent systematic review dataset of ~2800 observations from >150 sources. This semi-automated interactive code has other benefits besides valid, upload-ready analysis data. First, a flexible, parameterized template enables faster work, easily repeated. Also, the code can reproducibly make documentation of cleaning done, or extraction history, or other reports on data, parameters, and results. And critically, an interactive notebook makes sophisticated coding accessible to data extractors, who tend to have less coding experience than research analysts.</p>
                        <br>
                        <p><u>Developing a systematic framework to identify, evaluate and report evidence for drug selection in motor neuron disease clinical trials</u><br>
                        <i>Charis Wong</i><br>
                        Motor neuron disease (MND) is a rapidly progressive, disabling and incurable disease with an average of time to death between 18-30 months from diagnosis. Despite decades of clinical trials, effective disease modifying treatment options remain limited. Motor Neuron Disease – Systematic Multi-Arm Adaptive Randomisation Trial (MND-SMART; ClinicalTrials.gov registration number: NCT04302870) is an adaptive platform trial aimed at testing a pipeline of candidate drugs in a timely and efficient way. To inform selection of future candidate drugs to take to trial, we identify, evaluate and report evidence from (i) published literature via Repurposing Living Systematic Review (ReLiSyR-MND), a machine learning assisted, crowdsourced, three-part living systematic review evaluating clinical literature of MND and other neurodegenerative diseases which may share similar pathways, animal in vivo MND studies and in vitro MND studies, (ii) experimental drug screening including high throughput screening of human induced pluripotent stem cell based assays, (iii) pathway and network analysis, (iv) drug and trial databases, and (v) expert opinion. Our workflow implements automation and text mining techniques for evidence synthesis, and uses R shiny to provide interactive, curated living evidence summaries to guide decision making.</p>
                        <br>
                        <p><u>Sniffing though the Evidence: Leveraging Shiny to Conduct Meta Analysis on COVID-19 and Smell Loss</u><br>
                        <i>Vicente Ramirez</i><br>
                        Early in the coronavirus pandemic, scientists sought to understand the symptoms associated with COVID-19. Among those most frequently reported was the loss of the sense of taste and smell. To estimate the prevalence of smell loss, we conducted a meta-analysis. However, the dissemination of new literature necessitated that we continue to track and update our analysis. To address this issue, we leveraged the ability of R shiny applications to update and disseminate our analysis. From June 2020 to May 2021, our web-based dashboard provided the public with daily analysis updates, which estimated the prevalence of smell loss. This approach proved to be an effective method of disseminating findings to the broader community. While the coronavirus pandemic is an exceptional example of rapid updates to the literature, the framework presented may apply to several other fields and topics.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFive2">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFive2" aria-expanded="false" aria-controls="collapseFive2">                     
                        <span class="time">13:30 - 14:30 (GMT)</span>
                        <h4>Special Session 3: Graphical user interfaces</h4>
                        <h5 class="name">Moderators: Rob Crystal-Ornelas and Neal Haddaway</h5>
                      </div>
                    </div>
                    <div id="collapseFive2" class="collapse" aria-labelledby="headingFive2" data-parent="#accordion2">
                      <div class="card-body">
                        <p>User Interfaces (UIs) can provide researchers with new ways to both learn about and conduct their own meta-analyses and evidence syntheses. In this session, we will bring together researchers for an overview of some UIs available for doing meta-analysis and evidence syntheses in R. We will also have a discussion aimed at identifying how UIs can help evolve the future of synthesis based on R tools.</p>
                        <br>
                        <p><u>"Doing Meta-Analysis with R": Motivation, Concept and Features of an Open-Source Guide for Beginners</u><br>
                        <i>Mathias Harrer</i><br>
                        Meta-analytic methods have become an indispensable tool in many research disciplines. Worldwide, students and applied researchers acquire meta-analytic skills to address scientific questions pertinent to their field. Along with its extensions, R now arguably provides the most comprehensive, state-of-the-art toolkit for conducting meta-analyses. For novices, however, this wealth of R-based tools is often difficult to navigate and translate into practice, which may limit the uptake of available infrastructure. The “Doing Meta-Analysis with R” guide is one example of a project aiming to facilitate access to the R meta-analysis universe. It is primarily geared towards individuals without prior knowledge of R, meta-analysis, or both. We present the motivation, teaching concept, and core features of the guide. A brief overview of the technical implementation as an online, open-source resource based on {bookdown}, {shiny} and GitHub is also provided. Lastly, we discuss potential limitations of our approach, point to other user-friendly tools for new meta-analysts, and share general ideas to make the R meta-analysis infrastructure more accessible for everyone.</p>
                        <br>
                        <p><u>"Metapsy": A meta-analytic database and graphical user interface for psychotherapy research synthesis</u><br>
                        <i>Eirini Karyotaki</i><br>
                        The number of trials on psychotherapies for depression is very large and quickly growing. Because of this large body of knowledge, it is important that the results of these studies are summarized and integrated in meta-analytic studies. More than a decade ago, we developed a meta-analytic database of these trials which is updated yearly through systematic literature searches. Currently, our database includes more than 800 trials and has been used for numerous systematic reviews and meta-analyses. We developed an open-access website, which includes all the trials of our database and all data we have extracted so far. The prototype of this freely accessible website provides a graphical user interface based on {shiny} to run full meta-analyses, subgroup, risk of bias, and publication bias analyses on sections of studies. We hope that this public database can be used as a resource for researchers, clinicians, and other stakeholders who want to conduct systematic reviews and meta-analyses on psychotherapies for depression. We also discuss future plans to extend the functionality of the website and integrate databases on other mental disorders.</p>
                        <br>
                        <p><u>MetaLab: Interactive tools for conducting and exploring community-augmented meta-analyses in developmental psychology</u><br>
                        <i>Loretta Gasparini</i><br>
                        Meta-analyses are costly to conduct, often impossible to reanalyze, and outdated as soon as a new study emerges. How can we lower these hurdles, make data more accessible to researchers, and transform meta-analyses into a living resource? MetaLab (<a href="https://metalab.stanford.edu/" target="_blank">https://metalab.stanford.edu/</a>) is an interactive platform that hosts community-augmented meta-analyses in the field of developmental psychology. On MetaLab, community members can contribute full datasets or update existing meta-analyses. To ensure that new records comply with our format and to make automatic processing possible, we provide a validator using a graphical user interface (GUI). This greatly facilitates the continuous growth of MetaLab and ensures that data contributors can almost instantly benefit from the rich infrastructure we provide. To allow an even broader range of researchers to leverage meta-analytic data, our interactive visualization and power analysis tools allow exploring meta-analytic datasets and planning future experiments using the best evidence available. We will provide a tour of these tools to demonstrate how contributing, updating, and exploring a meta-analysis is greatly facilitated through our GUI.</p>
                        <br>
                        <p><u>R Shiny: why turn your R scripts into interactive web applications?</u></p>
                        <i>Kaitlyn Hair</i><br>
                        Researchers often want to share their datasets, complex analyses, or tools with others. However, if collaborators or decision makers lack coding expertise, this can be a significant barrier to engagement. Shiny is a package and framework for R users to create interactive online applications, without the need for web development skills.  In this presentation, I will introduce the basic architecture of a Shiny application, highlight use-cases via example applications, and provide some tips for getting started.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingSix2">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseSix2" aria-expanded="false" aria-controls="collapseSix2">                   
                        <span class="time">15:30 - 17:30 (GMT)</span>
                        <h4>Workshop 3: Collaborative coding/version control: introduction to Git/GitHub</h4>
                        <h5 class="name">Matthew Grainger</h5>
                      </div>
                    </div>
                    <div id="collapseSix2" class="collapse" aria-labelledby="headingSix2" data-parent="#accordion2">
                      <div class="card-body">
                        <p>This workshop will provide walkthroughs, examples and advice on how to use GitHub to support your work in R, whether developing packages or managing projects.</p>
                        <div class="location">
                          <a href="https://sei-org.zoom.us/meeting/register/tZ0sdu6ppjMpHtSQFdZP2cp4AXa7GEdOazD8" target="_blank">Register here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="wednesday" role="tabpanel" aria-labelledby="wednesday-tab">
                <div id="accordion3">
                  <div class="card">
                    <div id="headingOne3">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseOne3" aria-expanded="false" aria-controls="collapseOne3">                  
                        <span class="time">08:00 - 10:00 (GMT)</span>
                        <h4>Workshop 4: How The Collaboration for Environmental Evidence can help you</h4>
                        <h5 class="name">Ruth Garside</h5>
                      </div>
                    </div>
                    <div id="collapseOne3" class="collapse show" aria-labelledby="headingOne3" data-parent="#accordion3">
                      <div class="card-body">
                        <p>This workshop focuses on what the Collaboration for Environmental Evidence (CEE), a key non-profit systematic review coordinating body, can provide by way of support to anyone wishing to conduct a robust evidence synthesis in the field of environmental science, conservation, ecology, evolution, etc. The workshop will involve a presentation of the organisation, its role and free services and support, followed by a Q&A.</p>
                        <div class="location">
                          <a href="https://sei-org.zoom.us/meeting/register/tZUqfuihpzwrGdDIrYvvfGSQ_8Qfx3BzokHl" target="_blank">Register here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingTwo3">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseTwo3" aria-expanded="false" aria-controls="collapseTwo3">                  
                        <span class="time">10:00 - 11:00 (GMT)</span>
                        <h4>Special Session 4: Quantitative synthesis - Network Meta-Analysis</h4>
                        <h5 class="name">Moderator: Ciara Keenan</h5>
                      </div>
                    </div>
                    <div id="collapseTwo3" class="collapse" aria-labelledby="headingTwo3" data-parent="#accordion3">
                      <div class="card-body">
                        <p><u>NMAstudio: a fully interactive web-application for producing and visualizing network meta-analyses</u><br>
                        <i>Silvia Metelli</i><br>
                        Several software tools have been developed in the last years for network meta-analysis (NMA) but presentation and interpretation of findings from large networks of interventions remain challenging. We developed a novel online tool, called ‘NMAstudio’, for facilitating the production and visualization of key NMA outputs in a fully interactive environment. NMAstudio is a Python web-application that provides a direct connection between a customizable network plot and all NMA outputs. The user interacts with the network by clicking one or more nodes-treatments or edges-comparisons. Based on their selection, different outputs and information are displayed: (a) boxplots of effect modifiers assisting the evaluation of transitivity; (b) pairwise or NMA forest plots and bi-dimensional plots if two outcomes are given; (c) league tables coloured by risk of bias or confidence ratings from the CINeMA framework; (d) incoherence tests; (e) comparison-adjusted funnel plots; (f) ranking plots; (g) evolution of the network over time. Pop-up windows with extra information are enabled. Analyses are performed in R using ‘netmeta’ and results are transformed to interactive and downloadable visualizations using reactive Python libraries such as ‘Plotly’ and ‘Dash’. A network of 20 drugs for chronic plaque psoriasis is used to demonstrate NMAstudio in practice. In summary, our application provides a truly interactive and user-friendly tool to display, enhance and communicate the NMA findings.</p>
                        <br>
                        <p><u>The ROB-MEN Shiny app to evaluate risk of bias due to missing evidence in network meta-analysis</u><br>
                        <i>Virginia Chiocchia</i><br>
                        We recently proposed a framework to evaluate the impact of reporting bias on the meta-analysis of a network of interventions, which we called ROB-MEN (Risk Of Bias due to Missing Evidence in Network meta-analysis). In this presentation we will show the ROB-MEN Shiny app which we developed to facilitate this risk of bias evaluation process. ROB-MEN first evaluates the risk of bias due to missing evidence for each pairwise comparison separately. This step considers possible bias due to the presence of studies with unavailable results and the potential for unpublished studies. The second step combines the overall judgements about the risk of bias in pairwise comparisons with the percentage contribution of direct comparisons on the network meta-analysis (NMA) estimates, the likelihood of small-study effects, and any bias from unobserved comparisons. Then, a level of “low risk”, “some concerns” or “high risk” of bias due to missing evidence is assigned to each estimate. The ROB-MEN Shiny app runs the required analysis, semi-automates some of the steps and built-in algorithm to assign the overall risk of bias level for the NMA estimates and produces the tool’s output tables. We will present how the ROB-MEN app works using an illustrative example from a published NMA. ROB-MEN is the first tool for assessing the risk of bias due to missing evidence in NMA and is also incorporated in the reporting bias domain of the CINeMA software for evaluating the confidence in the NMA results.</p>
                        <br>
                        <p><u>Development of a novel multifaceted graphical visualisation for treatment ranking within an interactive Network Meta-Analysis web application</u><br>
                        <i>Clareece Nevill</i><br>
                        Network meta-analysis (NMA) compares the effectiveness of multiple treatments simultaneously. This project aimed to develop novel graphics within MetaInsight (interactive NMA web-app: crsu.shinyapps.io/MetaInsight) to aid assessment of the ‘best’ intervention(s). The most granular results are from Bayesian rank probabilities and can be visualised with (cumulative) rank-o-grams. Summary measures exists, however, simpler measures (e.g. probability best) may be easier to interpret but are often more unstable and don’t encompass the whole analysis. Surface under the cumulative ranking curve (SUCRA) is popular, directly linking with cumulative rank-o-grams. A critical assessment of current literature regarding ranking methodology and visualisation directed the creation of graphics in R using ‘ggplot’ and ‘shiny’. The Litmus Rank-O-Gram presents a cumulative rank-o-gram alongside a ‘litmus strip’ of SUCRA values acting as a key. The Radial SUCRA plot presents SUCRA values for each treatment radially with a network diagram of evidence overlaid. To aid interpretation and facilitate sensitivity analysis, the new graphics are interactive and presented alongside treatment effect and study quality results. Treatment ranking is powerful and should be interpreted cautiously with transparent, all-encompassing visualisations. This interactive tool will be pivotal for improving how researchers and stakeholders use and interpret ranking results.</p>
                        <br>
                        <p><u>crossnma: A new R package to synthesize cross-design evidence and cross-format data</u><br>
                        <i>Tasnim Hamza</i><br>
                        Network meta-analysis (NMA) is commonly used to compare between interventions simultaneously by synthesising the available evidence. That evidence is obtained either from non-randomized studies (NRS) or randomized controlled trials and is accessible as individual participant data (IPD) or aggregate data (AD). We have developed a new R package, crossnma, which allows us to combine these different pieces of information while accounting for their differences. The package conducts a Bayesian NMA and meta-regression to synthesize cross-design evidence and cross-format data. It runs a range of models with JAGS by generating the code automatically from user’s input. A three-levels hierarchical model is implemented to combine IPD and AD and we also integrate four different models for combining the different study designs (a) ignoring their differences in risk of bias (b) using NRS to construct discounted treatment effect priors (c,d) adjusting for the risk of bias in each study in two different ways. Up to three study- or patient-level covariates can also be included, which may help explaining some of the heterogeneity and inconsistency across trials. TH and GS are supported by the HTx-project. The HTx project has received funding from the European Union’s Horizon 2020 research and innovation programme under grant agreement Nº 825162.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingThree3">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseThree3" aria-expanded="false" aria-controls="collapseThree3">                 
                        <span class="time">11:30 - 12:30 (GMT)</span>
                        <h4>Special Session 5: Other quantitative synthesis</h4>
                        <h5 class="name">Moderator: Chris Pritchard</h5>
                      </div>
                    </div>
                    <div id="collapseThree3" class="collapse" aria-labelledby="headingThree3" data-parent="#accordion3">
                      <div class="card-body">
                        <p><u>What if…? A very short primer on conducting multiverse meta-analyses in R</u><br>
                        <i>Constantin Yves Plessen</i><br>
                        Even though conventional meta-analyses provide an overview of the published literature, they do not consider different paths that could have been taken in selecting or analyzing the data. At times, multiple meta-analyses with overlapping research questions reach different conclusions due to differences in inclusion and exclusion criteria, or data analytical decisions. It is therefore crucial to evaluate the influence such choices might have on the result of each meta-analysis. Was the meta-analytical method and exclusion criteria decisive, or is the same result reached via multiple analytical strategies? What if a meta-analyst would have decided to go a different path—would the same outcome occur? Ensuring that the conclusions of a meta-analysis are not disproportionately influenced by data analytical decisions, a multiverse meta-analysis can provide the entire picture and underpin the robustness of the findings—or lack thereof—by conducting multiple, namely all possible and reasonable meta-analyses at once. Hereby, multiverse meta-analyses provide a research integration like umbrella reviews yet additionally investigate the influence flexibility in data analysis could have on the resulting summary effect size. During the talk I will give insight into this potent method, and run through the multiverse of meta-analyses on the efficacy of psychological treatments for depression as an empirical example.</p>
                        <br>
                        <p><u>wildmeta: cluster wild bootstrapping for meta-analysis</u><br>
                        <i>Megha Joshi</i><br>
                        Evidence synthesists are often interested in whether certain features of samples, interventions, or study designs are systematically associated with the strength of intervention effects. In the framework of meta-analysis, such questions can be examined through moderator analyses. In practice, moderator analyses are complicated by the fact that meta-analytic data often include multiple dependent effect sizes per primary study. A common method to handle dependence, robust variance estimation (RVE), leads to excessive false positive results when the number of studies is small. Small-sample corrections for RVE have been proposed but they have low power, especially for multiple-contrast hypothesis tests (e.g., tests for whether average effects are equal across three different types of studies). Joshi, Pustejovsky & Beretvas (2021) examined an alternative method for handling dependence, cluster wild bootstrapping. The paper showed through simulation studies that cluster wild bootstrapping maintained adequate rates of false positive results while providing more power compared to existing small sample correction methods. In this presentation, I will introduce a package, called wildmeta, that implements cluster wild bootstrapping particularly for meta-analysis. The presentation will cover when and why meta-analysts should use cluster wild bootstrapping and, how to use the functions in the package with robumeta and metafor models.</p>
                        <br>
                        <p><u>Using sub-meta-analyses to maintain independence among spatiotemporally-replicated demographic datasets</u><br>
                        <i>Alex Nicol-Harper</i><br>
                        We use population modelling to inform conservation for the common eider, a well-studied seaduck of the circumpolar Northern Hemisphere. Our models are parameterised by vital rates measuring survival and reproduction, which we collated through lit review and a call for data. We performed precision-weighted meta-analysis (Doncaster & Spake, 2018) for vital rates with >20 independent estimates: adult annual survival, clutch size (number of eggs laid) and hatching success (proportion of eggs producing hatchlings). We excluded estimates without associated sample size, and included variance estimates where provided/calculable, otherwise inputting the imputed mean variance. Random-effects error structure allowed for likely variation in population means across this species wide range; however, all I2 values were less than 1%, suggesting that most between-study variation was due to chance rather than true heterogeneity. In many cases, studies presented multiple estimates for a given vital rate – e.g. over different study areas and/or multiple years. Where appropriate, we conducted sub-meta-analyses to generate single estimates which could be handled equivalently to non-disaggregated estimates from other studies. These decisions align with the suggestions of Mengersen et al. (2013) and Haddaway et al. (2020) for maintaining independence among heterogeneous samples, and our workflow ensured that the overall meta-analysis was conducted on independent replicate observations for each vital rate.</p>
                        <br>
                        <p><u>A new approach for meta-analysis using overall results: Amanida</u><br>
                        <i>Maria Llambrich</i><br>
                        The combination, analysis and evaluation of different studies which try to answer or solve the same scientific question, also known as a meta-analysis, plays a crucial role in answering relevant clinical relevant questions. Unfortunately, metabolomics studies rarely disclose all the statistical information needed to perform a meta-analysis in a traditional manner. Public meta-analysis tools can only by applied to data with standard deviation or directly to raw data. Currently there is no available methodology to do a meta-analysis based on studies that only disclose overall results. Here we present Amanida as a meta-analysis approach using only the most reported statistical parameters in this field: p-value and fold-change. The p-values are combined via Fisher’s method and fold-changes are combined by averaging, both weighted by the study size (n). The amanida package includes several visualization options: a volcano plot for quantitative results, a vote plot for total regulation behaviors (up/down regulations) for each compound, and a explore plot of the vote-counting results with the number of times a compound is found upregulated or downregulated. In this way, it is very easy to detect discrepancies between studies at a first glance. Now we have developed a Shiny app to perform meta-analysis using Amanida approach and make it more accessible for the community.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFour3">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFour3" aria-expanded="false" aria-controls="collapseFour3">                   
                        <span class="time">13:00 - 14:00 (GMT)</span>
                        <h4>Special Session 6: Quantitative synthesis with a Bayesian lens</h4>
                        <h5 class="name">Moderator: Jana Stojanova</h5>
                      </div>
                    </div>
                    <div id="collapseFour3" class="collapse" aria-labelledby="headingFour3" data-parent="#accordion3">
                      <div class="card-body">
                        <p><u>MetaBayesDTA: codeless meta-analysis of test accuracy, with or without a gold standard</u><br>
                        <i>Enzo Cerullo</i><br>
                        Background: Methods for the meta-analysis of test accuracy have historically required specialised statistical knowledge to implement. Recently, web applications have emerged which have made these methods more broadly accessible, such as MetaDTA (https://crsu.shinyapps.io/dta_ma/). This implements the so-called "bivariate" model and other features, such as a plot which displays quality assessment results alongside the analytical results. Another application is BayesDTA (https://bayesdta.shinyapps.io/meta-analysis/), which does not assume a perfect gold standard. Methods: We sought to create an extended, Bayesian version of MetaDTA, which (i) addresses several key limitations of existing apps, (ii) is accessible to researchers who do not have the background required to fit such models, and (iii) is suitable for other statisticians to use. We created the app in R using Shiny, and other packages such as rstan. Results: The app addresses several key limitations of other apps. For the bivariate model, one can conduct subgroup analysis and univariate meta-regression. For the imperfect gold standard model, MetaBayesDTA can partially account for the fact that studies often use different reference tests by introducing a covariate for test type. Conclusions: Due to its user-friendliness and features, MetaBayesDTA should appeal to a broad variety of applied researchers and encourage wider use of more advanced methods which may improve the quality of test accuracy meta-analyses.</p>
                        <br>
                        <p><u>Adjusting for publication bias with Bayesian model-averaging and the RoBMA R package</u><br>
                        <i>František Bartoš</i><br>
                        Publication bias presents a vital thread to meta-analysis and cumulative science. It can lead to overestimation of effect sizes and overstating the evidence against the null hypothesis. In order to mitigate the impact of publication bias, multiple methods of adjusting for publication bias were developed. However, their performance varies based on the true data generating process, and different methods often lead to conflicting conclusions. We developed a robust Bayesian meta-analysis (RoBMA) framework that uses model-averaging to combine different meta-analytic models based on their relative predictive. In other words, it allows researchers to base the inference proportionally to the degree of how well the different models predicted the data. We implemented the framework in the RoBMA R package. The package allows specification of various meta-analytic publication bias adjustment models, specification of default and informed prior distributions, and provides summaries and visualizations for the combined ensemble.</p>
                        <br>
                        <p><u>Using the bayesmeta R package for Bayesian random-effects meta-regression</u><br>
                        <i>Christian Röver</i><br>
                        The bayesmeta R package facilitates Bayesian meta-analysis within the simple normal-normal hierarchical model (NNHM). Using the same numerical approach, we extended the bayesmeta package to include several covariables instead of only a single "overall mean" parameter. We demonstrate the use of the package for several meta-regression applications, including modifications of regressor matrix and prior settings to implement model variations. Possible applications include consideration of continuous covariables, comparison of study subgroups, and network-meta-analysis.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFive3">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFive3" aria-expanded="false" aria-controls="collapseFive3">                 
                        <span class="time">15:30 - 17:30 (GMT)</span>
                        <h4>Workshop 5: Structural Equation modelling</h4>
                        <h5 class="name">Arindam Basu</h5>
                      </div>
                    </div>
                    <div id="collapseFive3" class="collapse" aria-labelledby="headingFive3" data-parent="#accordion3">
                      <div class="card-body">
                        <p>Meta-analysis of trials and observational studies can be conceptualised as mixed effects modelling where fixed-effects meta analyses are special cases of random-effects meta-analyses. Structural equation modelling can be used to conduct meta-analyses in many ways that can extend the scope of meta-analyses. In this workshop, we will show step by step how to use structural equation modelling for conducting meta-analyses using R with metaSEM, lme4, and OpenMx packages. As an attendee, you will not need any previous experience of using these packages as we will show from start to finish with a set of preconfigured data, and you can later try with your own data sets. In the workshop, the instructor will conduct live coding and attendees will follow suit with questions and answers. All materials will be openly distributed in a github repository and be available before and after the workshop. We will use a hosted Rstudio instance, so please RSVP for this workshop so that accounts can be set up ahead of time.</p>
                        <div class="location">
                          <a href="https://sei-org.zoom.us/meeting/register/tZctcuiuqjovHNFPE_mo_SUReMQWIyYGQG_Y" target="_blank">Register here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="tab-pane fade" id="thursday" role="tabpanel" aria-labelledby="thursday-tab">
                <div id="accordion4">
                  <div class="card">
                    <div id="headingOne">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseOne4" aria-expanded="false" aria-controls="collapseOne4">                 
                        <span class="time">08:00 - 10:00 (GMT)</span>
                        <h4>Workshop 6: Introduction to writing R functions/packages</h4>
                        <h5 class="name">Martin Westgate</h5>
                      </div>
                    </div>
                    <div id="collapseOne4" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion4">
                      <div class="card-body">
                        <p>This workshop provides walkthroughs, examples and advice on how to go about building R functions and packages, and why you might wish to do so in the first place. It aims to discuss the benefits of using functions and packages to support your work and the work of others, and provides practical advice about when a package might be ready to "go public".</p>
                        <div class="location">
                          <a href="https://sei-org.zoom.us/meeting/register/tZIqc-iuqDMuHd3Es2pygFkU4eSeoxM3Q7bS" target="_blank">Register here</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingThree4">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseThree4" aria-expanded="false" aria-controls="collapseThree4">                
                        <span class="time">11:00 - 12:15 (GMT)</span>
                        <h4>Special Session 7: Building an evidence ecosystem for tool design</h4>
                        <h5 class="name">Moderators: Sarah Young,Trevor Riley, and Alex Bannach-Brown</h5>
                      </div>
                    </div>
                    <div id="collapseThree4" class="collapse" aria-labelledby="headingThree" data-parent="#accordion4">
                      <div class="card-body">
                        <p>The production of high quality, timely and relevant evidence syntheses requires input and collaboration of many stakeholders, including researchers, developers, policy- and decision-makers, information specialists, and methodologists. As Nakagawa and colleagues note in their 2020 publication "A new ecosystem for evidence synthesis", building and sustaining an effective evidence synthesis community relies on "improvements in education, communication, practice and methodology". This panel will explore these ideas through a series of presentations providing examples of multi-stakeholder collaborations and contexts with a focus on tool-building for evidence synthesis and evidence-based decision-making. The presentations will emphasize the value of open source tools for inter- and intra-organizational collaboration, the unique needs of evidence stakeholders in a government context, and improving accessibility of tools through development and training. This will be followed with an open discussion with attendees, with the aim of identifying opportunities and solutions to strengthen the evidence synthesis ecosystem.</p>
                        <br>
                        <p><u>Search strategy development at a German Health Technology Assessment agency: our experience with R from an end user perspective</u><br>
                        <i>Siw Waffenschmidt and Elke Hausner</i><br>
                        IQWiG is a German health technology assessment (HTA) agency that has been using text mining tools to develop search strategies for bibliographic databases for more than 10 years. Originally we used the package tm in R for this purpose. We will describe the features we used and how we used them; we will also discuss why we have switched to a commercial tool for text analysis in the meantime and why we are currently looking for a new solution. In addition, we will summarize our requirements and explain which functions we think a new tool could have that go beyond simple text analysis.</p>
                        <br>
                        <p><u>The value of accessible packages for stakeholders in government</u><br>
                        <i>Trevor Riley and Kate Schofield</i><br>
                        Federal research groups support information gathering and evidence synthesis for both primary research and policy/decision making. This presentation will discuss the various ways in which research products are used and discuss the value of accessible tools and evidence.</p>
                        <br>
                        <p><u>Increasing access to evidence synthesis methods through tool development and capacity-building</u><br>
                        <i>Eliza Grames and Sarah Young</i><br>
                        Building methods and tools is only a first step toward facilitating and supporting evidence synthesis -- improving access for end users is a critical next step in making these methods and tools usable, sustainable and effective. This presentation will discuss how access to the R package litsearchr, used for information retrieval in evidence synthesis, was improved through two approaches: training and curriculum development and the development of a graphical user interface. We will reflect on considerations for developers and end users in the building and maintenance of open source tools for access and accessibility.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFour4">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFour4" aria-expanded="false" aria-controls="collapseFour4">                    
                        <span class="time">12:30 - 13:30</span>
                        <h4>Special Session 8: Developing the synthesis community</h4>
                        <h5 class="name">Moderator: Ciara Keenan</h5>
                      </div>
                    </div>
                    <div id="collapseFour4" class="collapse" aria-labelledby="headingFour4" data-parent="#accordion4">
                      <div class="card-body">
                        <p><u>The metadat Package: a collection of meta-analysis datasets for R</u><br>
                        <i>Wolfgang Viechtbauer</i><br>
                        The metadat package is a data package for R that contains a large collection of meta-analysis datasets. Development of the package started at the 2019 Evidence Synthesis Hackathon at UNSW Canberra with a first version of the package released on CRAN on 2021-08-20. As of right now, the package contains 70 datasets from published meta-analyses covering a wide variety of disciplines (e.g., education, psychology, sociology, criminology, social work, medicine, epidemiology, ecology). The datasets are useful for teaching purposes, illustrating and testing meta-analytic methods, and validating published analyses. Aside from providing detailed documentation of all included variables, each dataset is also tagged with one or multiple "concept terms" that refer to various aspects of a dataset, such as the field/topic of research, the outcome measure used for the analysis, the model(s) used for analyzing the data, and the methods/concepts that can be illustrated with the dataset. The package also comes with detailed instructions and some helper functions for contributing additional datasets to the package.</p>
                        <br>
                        <p><u>Lessons on leveraging large enrollment courses to screen studies for systematic reviews</u><br>
                        <i>Marc Lajeunesse</i><br>
                        Here I describe eight semesters of experimentation with various abstract screening tools, including R, HTML, CANVAS, and Adobe, with the aims to (1) improve science literacy among undergraduate students, and (2) leverage large enrollment courses to process and code vast amounts of bibliographic information for systematic reviews. I then discuss the promise of undergraduate participation for screening and classification, but emphase (1) consistent failures of tools, in terms of student accessibility and ability to combine and compare student screening decisions, and (2) my consistent inability to get consistent, high-quality screening outcomes from students.</p>
                        <br>
                        <p><u>‘LearnR’ & ‘shiny’ to support the teaching of meta-analysis of data from systematic review of animal studies.</u><br>
                        <i>David Hobby and Alexandra Bannach-Brown</i><br>
                        Teaching meta-analysis involves combining theoretical statistical knowledge and applying theoretical aspects in practice. Teaching sessions for non-technical students involving R are often beset with technical problems such as outdated software versions, missing and conflicting dependencies, and a tendency for students to arrive on the session day without having installed required software. This causes the first hour(s) of practical sessions to turn into technical troubleshooting sessions. To circumvent these problems, we have created a self-contained web app using the ‘shiny’ and ‘LearnR’ R packages to demonstrate the capabilities of R in meta-analysis. This app runs on a web browser, without the need for students to run R or install packages on their own devices, thus allowing instructors to focus on teaching rather than technical troubleshooting. Using a dataset and code from a previously published systematic review and meta-analysis of animal studies, students are walked-through steps demonstrating theoretical and mathematical foundations of meta-analysis and ultimately replicate the analysis and results. This app supports our live educational workshops but is also designed to be a stand-alone learning resource. At each step, there are multiple choice questions for students to check their understanding of the material. We have demonstrated the use of existing R packages to generate a user-interface for students to learn meta-analysis in practice.</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="card">
                    <div id="headingFive4">
                      <div class="collapsed card-header" data-toggle="collapse" data-target="#collapseFive4" aria-expanded="false" aria-controls="collapseFive4">                 
                        <span class="time">14:00 - 14:45 (GMT)</span>
                        <h4>Conference close</h4>
                        <h5 class="name">Neal Haddaway</h5>
                      </div>
                    </div>
                    <div id="collapseFive4" class="collapse" aria-labelledby="headingFive4" data-parent="#accordion4">
                      <div class="card-body">
                        <p>Hackathon summary presentations and closing remarks</p>
                        <div class="location">
                          <span></span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <!-- Counter Item -->
          <div class="work-counter-widget text-center">
            <br><br><br>
            <h5>Check out the latest #ESMARConf2022 Tweets here:</h5>
            <br>
            <a class="twitter-timeline" data-width="500" data-height="1000" href="https://twitter.com/eshackathon?ref_src=twsrc%5Etfw">Tweets by eshackathon</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script><br>
            <br>
            <p>Tweet about the conference here:<br><a href="https://twitter.com/intent/tweet?button_hashtag=esmarconf2022&ref_src=twsrc%5Etfw" class="twitter-hashtag-button" data-width="500" data-height="1000" data-show-count="false">Tweet #esmarconf2022</a><script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script></p>
          </div>
        </div>
        <hr>
      </div>
    </section>
    <!-- Schedule Section End -->

    <!-- Hackathons Section Start -->
    <section id="hackathons" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">#ESMARConf2022 hackathons</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">Find out more about the hackathons going on alongside #ESMARConf2022. Typically, these are closed, small groups of coders and subject experts working closely to develop tools and frameworks (mostly in R) for particular problems. Find out more about Evidence Synthesis Hackathons <a href="https://www.eshackathon.org/" target="_blank">here!</a></p>
            </div>
          </div> 
        </div>
        <div class="row">
          <div class="ccol-md-2 col-sm-2 col-lg-6">
<img class="img-fluid" src="assets/img/gallery/img-1.png" alt="">
                <h5><br>metadat package (Shiny app; adding datasets; other functionality)</h5>
                <p>A first version of the "metadat" package (https://github.com/wviechtb/metadat) was released on CRAN recently (https://cran.r-project.org/package=metadat). The package provides a function called datsearch() which allows users of the package to search for datasets based on concept terms or a full-text search: https://wviechtb.github.io/metadat/reference/datsearch.html. We aim to build Shiny app that replicates this functionality in a more "interactive" way (e.g., allow users to click/select concept terms and/or enter search terms and the list of matching datasets is updated on-the-fly). In addition, there will be the opportunity to add additional datasets to the package, improve the documentation, and consider additional functionality that could be added.</p>
          </div>
          <div class="ccol-md-2 col-sm-2 col-lg-6">
<img class="img-fluid" src="assets/img/gallery/img-2.jpg" alt="">
                <br>
                <h5><br>Citation origin package and Shiny app</h5>
                <p>No tools currently exist that can deduplicate citations while maintaining source metadata related to each of the deduplicated records. When teams are selecting databases for inclusion in a review it can be extremely difficult to determine the best resources and determine the ROI in terms of the time it takes to apply searches. By tracking where citations come from, the evidence synthesis community could in turn track the efficacy of various databases and identify the most relevant resources as it relates to their research topic. This proposed package would take in .ris files with source information included in a specific metadata field, the package would then provide the user with an overview of the # of citations from each resource that are unique, and the # that are duplicated between resources. It will be developed with a GUI for accessibility by researchers/librarians without programming skill sets, as well as with the ability to visualize results.</p>
          </div>
        </div>
        <div class="row justify-content-center mt-3">
          <div class="col-xs-12">
            <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSf84KqaqV4tHcAA3nxio0CEVIQPFhHYFA3cwgHXmqPddKp3jA/viewform?embedded=true" width="640" height="1000" frameborder="0" marginheight="0" marginwidth="0">Loading…</iframe>
            <br>
            <br>
            </div>
        </div>
        <div class="row justify-content-center mt-3">
          <div class="col-xs-12">
            <a href="https://www.eshackathon.org/projects.html" class="btn btn-common" target="_blank">Check out other hackathon projects at ESH</a>
          </div>
        </div>
        <hr>
      </div>
    </section>
    <!-- hackthons Section End -->


    <!-- Events Section Start -->
    <section id="events" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">Previous events</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">Check out previous ESMARConf events</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="blog-item">
              <div class="blog-image">
                <a href="https://www.eshackathon.org/events/2021-01-ESMAR.html" target="_blank">
                  <img class="img-fluid" src="assets/img/blog/img-1.png" alt="">
                </a>
              </div>
              <div class="descr">
                <div class="tag">#ESMARConf2021</div>
                <h3 class="title">
                  <a href="https://www.eshackathon.org/events/2021-01-ESMAR.html" target="_blank">
                    Evidence Synthesis and Meta-Analysis in R Conference 2021
                  </a>
                </h3>
                <div class="meta-tags">
                  <span class="date">Jan 21-22, 2021</span>
                  <span class="comments">| <a href="https://www.youtube.com/channel/UCqoKd8CCBInvyDMqeqGs0YQ/" target="_blank"> Free on YouTube</a></span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-12 text-center">
            <a href="https://www.eshackathon.org/events.html" class="btn btn-common" target="_blank">See other Evidence Synthesis Hackathon Events</a>
          </div>
        </div>
      </div>
    </section>
    <!-- Events Section End -->


    <!-- Footer Section Start -->
    <footer class="footer-area section-padding">
      <div class="container">
        <div class="row">
          
          <!-- /.widget -->
            <div class="widget">
              <h5 class="widget-title"><a class="twitter" href="https://twitter.com/eshackathon" target="_blank">FOLLOW US ON TWITTER</a></h5>
              <br>
              <h5 class="widget-title"><a href="mailto:neal.haddaway@sei.org" target="_blank">EMAIL US</a></h5>
            </div>
        </div>
      </div>
    </footer>
    <!-- Footer Section End -->

    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="site-info">
              <p>© site produced by Neal Haddaway 2022</p>
            </div>      
          </div>
        </div>
      </div>
    </div>

    <!-- Go to Top Link -->
    <a href="#" class="back-to-top">
    	<i class="lni-chevron-up"></i>
    </a>

    <div id="preloader">
      <div class="sk-circle">
        <div class="sk-circle1 sk-child"></div>
        <div class="sk-circle2 sk-child"></div>
        <div class="sk-circle3 sk-child"></div>
        <div class="sk-circle4 sk-child"></div>
        <div class="sk-circle5 sk-child"></div>
        <div class="sk-circle6 sk-child"></div>
        <div class="sk-circle7 sk-child"></div>
        <div class="sk-circle8 sk-child"></div>
        <div class="sk-circle9 sk-child"></div>
        <div class="sk-circle10 sk-child"></div>
        <div class="sk-circle11 sk-child"></div>
        <div class="sk-circle12 sk-child"></div>
      </div>
    </div>

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="assets/js/jquery-min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery.countdown.min.js"></script>
    <script src="assets/js/jquery.nav.js"></script>
    <script src="assets/js/jquery.easing.min.js"></script>
    <script src="assets/js/wow.js"></script>
    <script src="assets/js/jquery.slicknav.js"></script>
    <script src="assets/js/nivo-lightbox.js"></script>
    <script src="assets/js/main.js"></script>
  </body>
</html>')
  write(html, 'outputs/event_page.html')
  
  return(html)
  
}
