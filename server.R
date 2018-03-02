
server <- function(input, output, session) {
  observeEvent(input$file, {
    
    csv_file <- reactive(read.csv(input$file$datapath))
    output$table <- renderTable(head(csv_file(), n = 30))
    
    output$colname1 <- renderUI({ 
      selectInput("x", "x-axes", colnames(csv_file()))
    })
    output$colname2 <- renderUI({ 
      selectInput("y", "y-axes", colnames(csv_file()))
    })
    output$alternative <- renderUI({ 
      selectInput("alternative", "Alternative", choices = c("two.sided", "less", "greater"))
    })
    output$methodname <- renderUI({ 
      selectInput("method", "Method", choices = c("pearson", "kendall", "spearman"))
    })
  })

  observeEvent(input$submit, {
    #name <- names(input$file)
    csv_file <- reactive(read.csv(input$file$datapath))
    
    x <- reactive(csv_file()[input$x])
    y <- reactive(csv_file()[input$y])
    
    output$plot <- renderPlot({
      plot(x()[, 1], y() [, 1], xlab = input$x, ylab = input$y)
    })
    
    result <- reactive(cor.test(x = x()[, 1], y = y()[, 1], 
                                alternative = input$alternative, 
                                method = input$method)) 
    
    output$sum <- renderPrint({(result())})
    
    #output$pvalue <- renderText({paste0("p = ",format(result()$p.value, digits = 4))})

  })
}




