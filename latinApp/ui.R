ui = fluidPage(
  
  fluidRow(
    column(12,h2("Build a latin square design")))
  
  ,
  
  fluidRow(
    column(12,hr()))
  
  ,
  
  fluidRow(
    column(12, actionButton("build","Build")),
    textInput("text", label = h5("Number of conditions"), value = "4"))
  
  ,
  
  fluidRow(
    column(12, tableOutput(outputId="table")))
  
)