library(shiny)
library(ggplot2)

ui <- fluidPage(
  plotOutput("plot"),
  actionButton("button", "Click")
)

server <- function(input, output, session) {
  whichplot <- reactiveVal(TRUE)
  plot1 <- ggplot(mtcars) + aes(mpg, cyl) + geom_point()
  plot2 <- ggplot(mtcars) + aes(hp, disp) + geom_point()
  
  observeEvent(input$button, {
    whichplot(!whichplot())
  })
  
  which_graph <- reactive({
    if (whichplot()) {
      plot1
    } else {
      plot2
    }
  })
  
  output$plot <- renderPlot({   
    which_graph()
  }) 
}

shinyApp(ui, server)