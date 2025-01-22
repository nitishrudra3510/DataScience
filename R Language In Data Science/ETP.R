

# L
library(dplyr)
library(plotly)
library(shiny)

getwd()
setwd("/Users/nitishkumar/Downloads")
names()

data <- read.csv("OLYMPICS.csv")
names(olympics)

# ques 1
max_total_medals <- function(data) {
  max_total <- data %>%
    group_by(Country) %>%
    summarise(total_medals = sum(Total)) %>%
    arrange(desc(total_medals)) %>%
    
}
print()
max_total_medals

# ques 2
max_gold_medals <- function(data) {
  max_gold <- data %>%
    group_by(Country) %>%
    summarise(gold_medals = sum(Gold)) %>%

    
}

# 3
plot_year_wise_gold <- function(data, country) {
  gold_data <- data %>%
    filter(Country == country) %>%
    select(Year, Gold)
  plot <- plot_ly(gold_data, x = ~Year, y = ~Gold, type = 'scatter', mode = 'lines+markers', name = 'Gold Medals') %>%
    layout(title = paste('Year-wise Gold Medals for', country), xaxis 'Year', yaxis = 'Gold Medals'))
  return(plot)
}

# 4
plot_total_medals <- function(data, country) {
  total_data <- data %>%
    filter(Country == country) %>%
    select(Year, Total)
  return(plot)
}
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

# 
server <- function(input, output) {
  output$plot <- renderPlotly({
    if (input$analysis == "Year-wise Gold Medals") {
      plot_year_wise_gold(olympics, "India") 
    } else if (input$analysis == "Total Medals") {
      plot_total_medals(olympics, "India") 
    }
  })
}


shinyApp(ui = ui, server = server)
