# Define UI for miles per gallon application
shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Miles Per Gallon"),
  
  # Sidebar with controls to select the variable to plot against mpg
  # and to specify whether outliers should be included
  sidebarPanel(
    selectInput(
		"variable", "Variable:",
                list("Cylinders" = "cyl",
		     "Transmission" = "am",
		     "Gears" = "gear"
		    )
	       ),    
    p("This shiny app explores the data extracted from mtcars dataset, comprises fuel consumption and"),
    p("10 aspects of automobile design and performance for 32 automobiles).", 
    style = "font-family: 'times'; font-si16pt"),
    strong("Start by selecting from drop-down below:"),
    checkboxInput("outliers", "Show outliers", FALSE)
  ),
  
  # Show the caption and plot of the requested variable against mpg
  mainPanel(
    h3(textOutput("caption")),
    plotOutput("mpgPlot")
  )
))
