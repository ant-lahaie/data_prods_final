#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotly)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Gaussian Scatterplot"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
                p("This is pretty straightforward: put in the parameters and see your distribution in 3d!"),
                sliderInput("n", "How many numbers to plot?",
                            1, 3000, value = 500),
                sliderInput("sliderSd", "Pick the distribution standard deviation",
                            0, 30, value = 7, step = 0.5)
        ),

        # Show a plot of the generated distribution
        mainPanel(
                h3("Gaussian values scatterplot"),
                # plotOutput("distPlot")
                plotlyOutput("distPlot")
        )
    )
)
