# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Miles Per Gallon"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Cylinders" = "cyl", 
                     "Transmission" = "am", 
                     "Gears" = "gear")),
    
    
    
    
    p("This app explores the data extracted from the 1974 Motor Trend US magazine and comprises fuel consumption and"),
    p("10 aspects of automobile design and performance for 32 automobiles (1973-74 models). ", style = "font-family: 'times'; font-si16pt"),
    strong("Start by selecting from drop-down below:"),
    checkboxInput("outliers", "Show outliers", FALSE)
    
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    plotOutput("mpgPlot")
  )
))
