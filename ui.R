getwd()

library(shiny)
# Define UI for application
shinyUI(fluidPage(
  # Header or Title Panel 
  titlePanel(title = h4("Reactivity Control- GAURAV_AHINY-APP", align="center")),
  sidebarLayout(
    # Sidebar panel
    sidebarPanel(
      textInput("text1", "Enter Your Name"),
      textInput("text2", "Enter Your Address", width = 200),
      numericInput("num", "Enter Your Age", value = 20),
      radioButtons("gender", "Enter Your Gender", choices = c("Male", "Female", "Trans Gender")),
      textInput("college", "Enter Your college Name", width = 150),
      submitButton("sub", "SUBMIT", width = 100),
      p("Click the update Button to check the effects after entering the details")
      
      
    ),
    
    # Main Panel
    mainPanel(
      textOutput("text1"),
      textOutput("text2"),
      textOutput("age"),
      textOutput("gender"),
      textOutput("college")
      
      
    
            )
      
    )
    
  )
)  
