library(shiny)

shinyServer(
  
  function(input, output) {
    output$text1 <- renderText({
      paste("My Name is: ", input$text1)
    })
      
      output$text2 <- renderText({
      paste("My Address is: ", input$text2)
      })
        
        output$age <- renderText({
      paste("My Age is: ", input$num)
        })
          
          output$gender <- renderText({
      paste("My gender is: ", input$gender)
          })
            
            output$college <- renderText({
      paste("My College is: ", input$college)
      
          })
    
    
    
          })
       
      

    
  