library(shiny)

# See above for the definitions of ui and server
ui <- fluidPage(
  titlePanel("title panel"),
  
  sidebarLayout(position = "right",
                sidebarPanel("sidebar panel"),
                mainPanel("main panel")
  )
)

server <- function(input,output) {
  
}

shinyApp(ui = ui, server = server)