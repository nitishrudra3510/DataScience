
library(dplyr)
library(plotly)
library(shiny)


getwd("/Users/nitishkumar/Downloads")
olympics <- read.csv("OLYMPICS.csv")

# 
max_total_medals <- function(data) {
  max_total <- data %>%
    group_by(Country) %>%
    summarise(total_medals = sum(Total)) %>%
    arrange(desc(total_medals)) %>%
  
}
print(max_gold_medals())

max_gold_medals <- function(data) {
  max_gold <- data %>%
    group_by(Country) %>%
    summarise(gold_medals = sum(Gold)) %>%

  max_gold_country <- max_gold$Country
  cat("Country with maximum gold medals till 2014:", max_gold_country, "\n")
}

# ques 3:
plot_year_wise_gold <- function(data, country) {
  gold_data <- data %>%
    filter(Country == country) %>%
    select(Year, Gold)
  plot <- plot_ly(gold_data, x = ~Year, y = ~Gold, type = 'scatter', mode = 'lines+markers', name = 'Gold Medals') %>%
    layout(title = paste('Year-wise Gold Medals for', country), xaxis = list(title = 'Year'), yaxis = list(title = 'Gold Medals'))
  print(plot)
}
plot_total_medals <- function(data, country) {
  total_data <- data %>%
    filter(Country == country) %>%
    select(Year, Total)
  plot <- plot_ly(total_data, x = ~Year, y = ~Total, type = 'scatter', mode = 'lines+markers', name = 'Total Medals') %>%
    layout(title = paste('Total Medals by'), xaxis = 'Year', yaxis =  'Total Medals')
  return(plot)
}



