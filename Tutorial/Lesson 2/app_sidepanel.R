library(shiny)

# See above for the definitions of ui and server
ui <- fluidPage(
  titlePanel("My Shiny App"),
  
  sidebarLayout(#position = "right",
                sidebarPanel("sidebar panel"),
                mainPanel(
                  h1("First Level title", align = "center"),
                  h2("First Level title")
                )
  )
)

server <- function(input,output) {
  
}

shinyApp(ui = ui, server = server)