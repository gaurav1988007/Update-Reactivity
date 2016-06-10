getwd()

library(shiny)
# Define UI for application
shinyUI(fluidPage(
  # Header or Title Panel 
  titlePanel(title = h4("Demonstration on Updating Dataset-GAURAV_AHINY-APP", align="center")),
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
        selectInput("data", "Select the dataset you want:", choices = c("iris", "mtcars", "pressure")),
        
        br(), 
       
        
        numericInput("obs", "Select the numbr of observations you want:", 6, min = 1, max = data()),
        br(),
       
        
        submitButton("UPDATE!", width = 200, icon("upload", class = "fa fa-camera-retro fa-2x", lib = "font-awesome")),

        helpText("Please CLICK! on update to get the filtered result!!")
        
    ),
    
    # Main Panel
    mainPanel(
  
      h4(textOutput("dataname")),
      verbatimTextOutput("structure"),
      
      h4(textOutput("observation")),
      tableOutput("view")
      
            )
      
    )
    
  )
)  
