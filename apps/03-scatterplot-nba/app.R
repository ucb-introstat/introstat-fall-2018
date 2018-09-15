# Title: Scatterplots with NBA Players Data
# Description: Uses data of NBA players to show various scatter diagrams
# Author: Gaston Sanchez

library(shiny)

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
dat$salary <- dat$salary / 1000000


# Define UI for application that draws a scatterdiagram
ui <- fluidPage(
  
  # Give the page a title
  titlePanel("NBA Players Data"),
  
  # Generate a row with a sidebar
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("xvar", "X-axis variable", 
                  choices = colnames(dat), selected = 'height'),
      checkboxInput('xlog', label = strong('log(x)')),
      selectInput("yvar", "Y-axis variable", 
                  choices = colnames(dat), selected = 'weight'),
      checkboxInput('ylog', label = strong('log(y)')),
      sliderInput("cex", 
                  label = "Size of points",
                  min = 0, max = 3, value = 2, step = 0.1),
      hr(),
      helpText('Correlation:'),
      verbatimTextOutput("correlation")
    ),
    
    # Create a spot for the plot
    mainPanel(
      plotOutput("datPlot")  
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
  output$datPlot <- renderPlot({
    
    # Render a scatterplot
    if (input$xlog) {
      x = log(dat[,input$xvar])
    } else {
      x = dat[,input$xvar]
    }
    if (input$ylog) {
      y = log(dat[,input$yvar])
    } else {
      y = dat[,input$yvar]
    }
    
#    plot(dat[,input$xvar], dat[,input$yvar],
    plot(x, y,
         main = 'scatter diagram', type = 'n', axes = FALSE,
         xlab = input$xvar, ylab = input$yvar)
    #box()
    axis(side = 1)
    axis(side = 2, las = 1)
#    points(dat[,input$xvar], dat[,input$yvar],
    points(x, y,
           pch = 21, col = 'white', bg = '#4878DFaa',
           lwd = 2, cex = input$cex)
  })
}

# Run the application 
shinyApp(ui = ui, server = server)

