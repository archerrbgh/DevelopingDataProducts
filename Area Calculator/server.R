shinyServer(
    function(input, output) {
        output$text1 <- renderText({
            paste("You have selected", input$var)
        })
        output$text2 <- renderText({
            if (input$var == "square") {
                area <- as.numeric(input$length)*as.numeric(input$length)
            }
            if (input$var == "rectangle" | input$var == "parallelogram") {
                area <- as.numeric(input$length)*as.numeric(input$width)
            }
            if (input$var == "triangle") {
                area <- (as.numeric(input$length)*as.numeric(input$width))/2
            }
            if (input$var == "circle") {
                area <- pi*(as.numeric(input$length))^2
            }
            paste("The area is", area)
        })
    }
)