#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
function(input, output, session) {

    output$distPlot <- renderPlotly({
            n <- input$n
            sd <- input$sliderSd
            
            X <- rnorm(n, 0, sd)
            Y <- rnorm(n, 0, sd)
            Z <- rnorm(n, 0, sd)
            data <- data.frame(X,Y,Z)
            fig <- plot_ly(data, x = ~X, y = ~Y, z = ~Z, 
                           marker = list(size = 4, opacity = .3)) %>%
                    layout(scene = list(
                            xaxis = list(range = list(-50,50)),
                            yaxis = list(range = list(-50,50)),
                            zaxis = list(range = list(-50,50))
                    ))
            fig
    })

}
