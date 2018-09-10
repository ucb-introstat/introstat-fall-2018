library(shiny)
library(plotly)

# data set
nba <- read.csv('../../data/nba_players.csv', header = TRUE)

# quantitative variables
quantitative <- c(
  "height","weight","salary","experience","age","games","games_started",
  "minutes_played","field_goals","field_goal_attempts","field_goal_percent",
  "points3","points3_attempts","points3_percent","points2","points2_attempts",
  "points2_percent","effective_field_goal_percent","free_throws",
  "free_throw_attempts","free_throw_percent","offensive_rebounds",
  "defensive_rebounds","total_rebounds","assists","steals","blocks",
  "turnovers","fouls","points")

# select just quantitative variables
dat <- nba[ ,quantitative]
dat$salary <- round(dat$salary / 1000000, 2)


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Give the page a title
  titlePanel("NBA Players Data"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("xvar", "X-axis variable", 
                  choices = colnames(dat), selected = 'height'),
      selectInput("yvar", "Y-axis variable", 
                  choices = colnames(dat), selected = 'weight'),
      sliderInput("cex", 
                  label = "Size of points",
                  min = 0, max = 3, value = 2, step = 0.1),
      hr(),
      helpText('Correlation:'),
      verbatimTextOutput("correlation")
    ),
    
    # Create a spot for the barplot
    mainPanel(
      plotlyOutput("datPlot")  
    )
    
  )
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  # Correlation
  output$correlation <- renderPrint({ 
    cor(dat[,input$xvar], dat[,input$yvar], use = "complete.obs")
  })
  
  # Fill in the spot we created for a plot
  output$datPlot <- renderPlotly({
    
    # Render a scatterplot
    plot_ly(x = dat[,input$xvar], y = dat[,input$yvar],
           type = 'scatter', mode = 'markers') %>%
    layout(title = 'Styled Scatter',
           yaxis = list(zeroline = FALSE),
           xaxis = list(zeroline = FALSE))
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

