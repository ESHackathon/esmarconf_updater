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
  team_dat <- read.csv(here::here("outputs", "team.csv"))
  team <- team_dat$team
  bios <- team_dat$bios
  links <- team_dat$team_links
  
  team_html <- paste0(paste0('<div class="row section-padding">
\t<div class="col-3">
\t\t<img src="assets/img/team/', tolower(stringr::word(team, 1)), '.jpg" width="200px">
\t</div>
\t<div class="col-9">
\t\t<h5>', team, '</h5>
\t\t<p>', bios, '</p>
\t\t<br><p><a href="', links, '" target="_blank">Read more here</a></p>
\t</div>
</div>'), collapse = '\n\n')
  
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
              <p class="wow fadeInDown" data-wow-delay="0.2s">', gsub("⊛ ", "\n⊛ ", description), '<br><br>ESMARConf was established in 2020 and is coordinated by the <a href="https://www.eshackathon.org" target="_blank">Evidence Synthesis Hackathon</a>.</p>
            </div>
            <div class="col-md-12 col-sm-12 col-xs-12">
              <br><br>
              <p class="wow fadeInDown" data-wow-delay="0.2s">If you like what we are doing, please consider <b>donating</b> to support us keeping ESMARConf entirely free and open to all! You can donate safely and securely through our fiscal host, the Open Collective. All of our accounts are open and transparent. Read more by clicking the button below.</p><br>
              <a href="https://opencollective.com/esmarconf#section-contribute" class="btn btn-common wow fadeInUp" download>Donate</a><br>
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

    <!-- Recordings Section Start -->
    <section id="recordings" class="schedule section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">#', ESMARConfName, '</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">Check out the tables below to find and watch individual talks, session livestreams and workshops. All of our recordings will remain free on YouTube forever.</p>
              <br>
              <p>Why not tell others about ', ESMARConfName, ' by Tweeting about the conference?<br><a href="https://twitter.com/intent/tweet?button_hashtag=', tolower(ESMARConfName), '&ref_src=twsrc%5Etfw" class="twitter-hashtag-button" data-width="500" data-height="1000" data-show-count="false">Tweet #esmarconf2022</a></p>
              <br>
              <br>
              <br>
              <h1>', ESMARConfName, ' sessions</h1>
              <iframe src="', ESMARConfName, '_sessions.html" width="100%" height="800" frameBorder="0"></iframe><br>
              <br>
              <br>
              <br>
              <h1>', ESMARConfName, ' individual talks</h1>
              <iframe src="', ESMARConfName, '_talks.html" width="100%" height="1000" frameBorder="0"></iframe><br>
              <br>
              <br>
              <h1>', ESMARConfName, ' workshops</h1>
              <iframe src="', ESMARConfName, '_workshops.html" width="100%" height="1000" frameBorder="0"></iframe><br>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Recordings Section End -->

    <!-- Team Section Start -->
    <section id="team" class="schedule section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h1 class="section-title wow fadeInUp" data-wow-delay="0.2s">Meet the #', ESMARConfName, ' Organising Team</h1>
              <p class="wow fadeInDown" data-wow-delay="0.2s">This team of amazing people organised this year\'s event. </p>
              <br>
            </div>
          </div>
        </div>
        
        ', team_html, '

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
  
  return(html)
  
}
