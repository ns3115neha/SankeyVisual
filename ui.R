#install_github('ramnathv/rCharts')
#setwd("C:/Users/neha.sharma/Desktop/rCharts_d3_sankey-gh-pages/libraries/widgets/d3_sankey")
#Pre - requiste (32 bit R)
#runApp('ui_Standalone sankey')


library(shiny)
library(rCharts)

shinyUI(bootstrapPage(
  div(
    class="container-fluid",
    div(class="row-fluid",
        headerPanel("Path Explorer") 
    ),
    div(class="row-fluid",
        sidebarPanel(
          h4("Sankey Visualisation")
        ),
        mainPanel(
          tableOutput("table"),
          showOutput('sankey' ,'C:/Users/neha.sharma/Desktop/rCharts_d3_sankey-gh-pages/libraries/widgets/d3_sankey') # I refer to this directory later on in this message
        )
    )
  )
))