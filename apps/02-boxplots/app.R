# Title: Boxplots with NBA Players Data
# Description: this app uses data of NBA players to show various histograms
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


# Define UI for application that draws a histogram
ui <- fluidPage(
  
  # Application title
  titlePanel("NBA Players"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Select a Variable", 
                  choices = colnames(dat), selected = 'height'),
      
      numericInput('range', label = "Range of whiskers", value = 1.5,
                   min = 0, max = 3, step = 0.1),
      
      checkboxInput('orientation', label = strong('Vertical orientation'))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("boxplot"),
      verbatimTextOutput("auc")
    )
  )
)


# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$boxplot <- renderPlot({
    x    <- na.omit(dat[ ,input$variable])

    boxplot(x, horizontal = !input$orientation, range = input$range,
            col = 'gray80')
  })
  
  output$auc <- renderPrint({
    x    <- na.omit(dat[ ,input$variable])
    summary(x)
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

