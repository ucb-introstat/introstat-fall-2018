# Box with numbers [1, 2, 3, 4], and 25 draws by default
# Sampling numbers from a box
# Description: Sum of tickets in a simple box: [1 2 3 4]
# Author: Gaston Sanchez

library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Give the page a title
  titlePanel("Sum of draws"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      textInput("tickets", label = "Numbers in box:", 
                value = '1, 2, 3, 4'),
      numericInput("draws", label = "Number of Draws:", value = 2,
                   min = 5, max = 200, step = 1),
      checkboxInput('replacement', label = strong('Without replacement')),
      checkboxInput('props', label = strong('Show proportions')),
      sliderInput("reps", label = "Number of repetitions:", 
                  min = 10, max = 2000, value = 10, step = 1),
      numericInput("seed", label = "Random Seed:", 12345, 
                   min = 10000, max = 50000, step = 1)
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotOutput("sumplot")  
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
      samples[i] <- sum(sample(tickets(), size = input$draws, 
                               replace = !input$replacement))
    }
    samples
  })
  
  # Plot with sum of draws
  output$sumplot <- renderPlot({
    # Render a barplot
    freqs <- table(sum_draws()) / input$reps
    barp <- barplot(freqs, 
            ylim = c(0, round(max(freqs), 1) + 0.1),
            space = 0, las = 1,
            xlab = 'Sum',
            ylab = 'Relative frequency',
            main = 'Empirical Histogram')
    if (input$props) {
      text(barp, freqs + 0.01, labels = round(freqs, 3))
    }
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

