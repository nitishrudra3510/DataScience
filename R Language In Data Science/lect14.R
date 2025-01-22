# Install and load required packages
install.packages('dplyr')
library(dplyr)
install.packages('gapminder')
library(gapminder)

# Load dataset
data <- gapminder
View(data)  # View the dataset

# To know the structure of the dataset
str(data)

# EXTRACT THE continent=Europe
View(data[data$continent == 'Europe', ])

# Extract data for continent=Europe and year > 1982
View(data[data$continent == 'Europe' & data$year > 1982, ])

# Second method: Find the data for the year 1982 and continent Europe
a <- data %>%
  filter(continent == 'Europe' & year == 1982)
View(a)

# Select year, country, and life expectancy where life expectancy > 80
filtered_data <- data %>%
  filter(continent == 'Europe' & lifeExp > 80) %>%
  select(year, country, lifeExp)
View(filtered_data)

# Select first three columns
b <- data %>%
  select(1:3)
View(b)

# Select specific columns (continent and lifeExp)
c <- data %>%
  select(continent, lifeExp)
View(c)

# Select rows where lifeExp > 80 and select specific columns
d <- data %>%
  select(year, continent, lifeExp) %>%
  filter(lifeExp > 80)
View(d)

# Arrange the dataset by year (ascending order)
e <- data %>%
  arrange(year)
View(e)

# Arrange the dataset by year and continent
f <- data %>%
  arrange(year, continent)
View(f)

# Add a new column 'gap' by multiplying 'pop' and 'gdpPercap'
i <- data %>%
  mutate(gap = pop * gdpPercap)
View(i)

# Group the data by country and calculate the mean population for each country
j <- data %>%
  group_by(country) %>%
  summarize(mean1 = mean(pop))
View(j)  # View the resulting summary data


k = data%>%
  summarize(max1=max(lifeExp), min1=min(lifeExp))
View(k)