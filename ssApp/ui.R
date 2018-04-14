ui = fluidPage(
  
  # output functions 
  # provides space for the output object
  # the object itself is built within server
  
  # always put a comma after each html item!
  # html tags work here, too
  
  # input functions
  fluidRow(
    # columns add up to 12
    column(3,
      h2("How does linear regression work?")
    ),
    
    column(5,
      
      h5("We would like to model the relationship between two variables
          in a dataset. If they correlate, a linear relationship
          can be observed and modeled by a line with an intercept and slope.",
         align = "justify")
    )
  ),
  
  fluidRow(column(12,hr())),
  
  fluidRow(
      column(3,
        div(
          div("Change the parameters and observe the sums of squares. This is a measure
            of how well the line fits the data. Click 'solve' to let the computer
            find the best fit.",
            align = "justify"),
          
          hr(),
          
          sliderInput(inputId = "slope", 
                      label = "Change slope",
                      value = 0.5, min = 0, max = 1),
          
          sliderInput(inputId = "intercept", 
                      label = "Change intercept",
                      value = intcptSol, min = floor(intcptSol/2), 
                      max = floor(intcptSol*2)),
          
          actionButton("solve", "Solve"),
          
          hr(),
          
          strong(textOutput("ss"))   
        )
      ),
    column(5,
      plotOutput(outputId = "graph")
    )
  )
)