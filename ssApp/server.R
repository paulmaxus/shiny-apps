server = function(input, output, session) {
  
  # output objects have to be associated
  # with space allocated by fluidPage()
  output$graph = renderPlot({
    
    # plot car data
    plot = ggplot(data, aes(disp,hp)) + geom_point()
    plot + geom_abline(slope = input$slope, intercept = input$intercept)
    
  })
  
  output$ss = renderText({ 
    
    yhat = input$intercept + input$slope * x
    err = y - yhat
    ss = floor(sum(err^2))
    
    paste("Sums of squares: ", ss)
  })
  
  # Solve for the correct regression model
  observeEvent(input$solve, {
    updateSliderInput(session, inputId = "slope", value = slopeSol)
    updateSliderInput(session, inputId = "intercept", value = intcptSol)
  })
  
}