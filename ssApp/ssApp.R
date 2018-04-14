# Shiny application to demonstrate the minimisation
# of sums of squares - algorithm

# All variables and utility functions that are supposed
# to be used in multiple sessions (i.e. access by any browser)
# have to be defined outside of ui and server.
# this is the case for loading datasets for instance since
# they shouldnt be loaded every time a browser accesses 
# the application
library(shiny)

source("ui.R")
source("server.R")

shinyApp(ui, server)
