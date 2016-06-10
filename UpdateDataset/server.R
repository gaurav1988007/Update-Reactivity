library(shiny)

shinyServer(
  
  function(input, output) {
    output$dataname <- renderText({
      paste("Structure of the Dataset: ", input$data)
    })
      
      output$observation <- renderText({
      paste("First", input$obs, "Observations of the Selected Dataset: ", input$data)
      })
        
      
      
      output$structure <- renderPrint({
        
        str(get(input$data))
         
              })
      output$view <- renderTable({
        head(get(input$data), n = input$obs)
      })
                 })
       
      

    
  