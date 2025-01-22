# #Which country has won the maximum number of total medals till 2014

# L
library(dplyr)
library(plotly)
library(shiny)

getwd()
setwd("/Users/nitishkumar/Downloads")

# Load Olympics dataset
data <- read.csv("OLYMPICS.csv")
names(data)

View(data)

# ques 1
max_total_medals <- function(data) {
  max_total <- data %>%
    group_by(Country) %>%
    
    max_total_country <- max_total$Country
    cat("Country with maximum total medals till 2014:", max_total_country, "\n")
}

max_total_medals

# ques 2
max_gold_medals <- function(data) {
  max_gold <- data %>%
    group_by(Country) %>%
    summarise(gold_medals = sum(Gold)) %>%
    max_gold_country <- max_gold$Country
    cat("Country with maximum gold medals till 2014:", max_gold_country, "\n")
}

# 3
plot_year_wise_gold <- function(data, country) {
  gold_data <- data %>%
    filter(Country == country) %>%
    select(Year, Gold)
  plot <- plot_ly(gold_data, x = ~Year, y = ~Gold, type = 'scatter', mode = 'lines+markers', name = 'Gold Medals') %>%
    layout() s = list(title = 'Gold Medals'))
  return(plot)
}

# 4

print(plot_total_medals)


# Load Olympics dataset
olympics <- read.csv("olympics_dataset.csv")

# Define UI for application
ui <- fluidPage(
  titlePanel("Olympics Analysis Dashboard"),
  sidebarLayout(
    
    mainPanel(
      plotlyOutput("plot")
    )
  )
)

# Define server logic
server <- function(input, output) {
  output$plot <- renderPlotly({
    if (input$analysis == "Year-wise Gold Medals") {
      plot_year_wise_gold(olympics, "India") # Change "India" to any country you want to analyze
    } else if (input$analysis == "Total Medals") {
      plot_total_medals(olympics, "India") # Change "India" to any country you want to analyze
    }
  })
}

# Run the application
shinyApp(ui = ui, server = server)
