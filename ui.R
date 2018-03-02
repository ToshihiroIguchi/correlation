library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Test for Association/Correlation Between Paired Samples"),
    sidebarLayout(
      sidebarPanel(
        fileInput("file", "Choose CSV File",
                  accept = c(
                    "text/csv",
                    "text/comma-separated-values,text/plain",
                    ".csv")
        ),
        tags$hr(),
        #h5("Data selection for x and y axes"),
        htmlOutput("colname1"),
        htmlOutput("colname2"),
        htmlOutput("alternative"),
        htmlOutput("methodname"),
        actionButton("submit", "Analyze")
      ),
      mainPanel(
        tabsetPanel(type = "tabs",
                    tabPanel("Table", tableOutput('table')),
                    tabPanel("Result", 
                             #textOutput("pvalue"),
                             plotOutput("plot"),
                             verbatimTextOutput("sum"))

        )
      )
    )
  )
)