library(googledrive)

ui <- fluidPage(
    fluidRow(
        column(10,
               tags$style(HTML("
               h3 {
                color: #4fb4a8;
                }")),
               h3("ESMARConf file upload"),br(),
               'Welcome to the ESMARConf file uploading portal. Here you can upload your pre-recorded video and any associated slide decks or transcripts.',
               br(),
               br(),
               checkboxInput("agree_T&C", "Please check this box to agree to that this upload can be posted to YouTube and Zenodo under a Creative Commons Attribution 4.0 International license.", width = '100%'),
               tags$div(id = 'placeholder'),
               fileInput(inputId = "file", 
                         label = "Choose file to upload",
                         accept = NULL, 
                         multiple = TRUE)
        )
    )
)

server <- function(input, output) {
    
    observeEvent(input$agree_T&C, {
        
            insertUI(
                selector = '#placeholder',
                ## wrap element in a div with id for ease of removal
                ui = tags$div(
                    'Please accept the Creative Commons license before uploading'
                )
            )
    })
    
    observeEvent(input$file, {
        drive_upload(media = input$file$datapath,
                     name = input$file$name,
                     path = "ESMARConf/ESMARConf2022/video_uploads")
    })
}

shinyApp(ui, server)
