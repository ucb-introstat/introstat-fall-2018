# Box with numbers [1, 2, 3, 4, 5, 6, 7], and 25 draws
# Sampling numbers from a box
# Normal approximation to "Sum of Draws" and "Mean of Draws"
# SticiGui, Chapter 23

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  # Give the page a title
  titlePanel("Average Number"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      textInput("tickets", label = "Numbers in box:", 
                value = '1, 2, 3, 4, 5, 6, 7'),
      numericInput("draws", label = "Number of Draws:", value = 25,
                   min = 5, max = 200, step = 1),
      sliderInput("reps", label = "Number of samples:", 
                  min = 10, max = 5000, value = 50, step = 10),
      numericInput("seed", label = "Random Seed:", 12345, 
                   min = 10000, max = 50000, step = 1),
      hr(),
      helpText('Sum of Draws'),
      verbatimTextOutput("sum_draws"),
      helpText('Average of Draws'),
      verbatimTextOutput("avg_draws")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      tabsetPanel(type = "tabs",
                  tabPanel("Sum", plotOutput("sumPlot")),
                  tabPanel("Average", plotOutput("averagePlot"))
      )
    )
  )
  
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  tickets <- reactive({
    tickets <- gsub(' ', '', input$tickets)
    tickets <- unlist(strsplit(tickets, ','))
    as.numeric(tickets)
  })
  
  sum_draws <- reactive({
    set.seed(input$seed)
    samples <- 1:input$reps
    for (i in 1:input$reps) {
      samples[i] <- sum(sample(tickets(), size = input$draws, replace = TRUE))
    }
    samples
  })
  
  # Sum of draws
  output$sum_draws <- renderPrint({ 
    mean(sum_draws())
  })
  
  # Average of draws
  output$avg_draws <- renderPrint({ 
    mean(sum_draws() / input$draws)
  })
  
  # Plot with sum of draws
  output$sumPlot <- renderPlot({
    # Render a barplot
    barplot(table(sum_draws()), 
            space = 0, las = 1,
            xlab = 'Sum',
            ylab = '',
            main = 'Sum of the Draws')
  })
  
  # Plot with average of draws
  output$averagePlot <- renderPlot({
    # Render a barplot
    avg_draws <- round(sum_draws() / input$draws, 1)
    barplot(table(avg_draws), 
            space = 0, las = 1,
            xlab = 'Average',
            ylab = '',
            main = 'Average of the Draws')
  })
  
}



# Run the application 
shinyApp(ui = ui, server = server)
