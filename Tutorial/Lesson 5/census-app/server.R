library(shiny)

source("helpers.R")
counties <- readRDS("data/counties.rds")

# Server logic ----
server <- function(input, output) {
  output$map <- renderPlot({
    data <- switch(input$var, 
                   "Percent White" = counties$white,
                   "Percent Black" = counties$black,
                   "Percent Hispanic" = counties$hispanic,
                   "Percent Asian" = counties$asian)
    
    color <- switch(input$var, 
                   "Percent White" = "darkgreen",
                   "Percent Black" = "black",
                   "Percent Hispanic" = "darkorange",
                   "Percent Asian" = "darkviolet")
    
    legend <- switch(input$var, 
                   "Percent White" = "% White",
                   "Percent Black" = "% Black",
                   "Percent Hispanic" = "% Hispanic",
                   "Percent Asian" = "% Asian")
    
    percent_map(var = data, color, legend, max = input$range[1], min = input$range[2])
  })
}