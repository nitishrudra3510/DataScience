data<-data.frame(Name=c("a","b",NA,"c"), Age=c(23,24,25,NA),
                 Height=c(46,NA,NA,56),School=c("Yes","NO",NA,"Yes"))
View(data)
is.na(data)

# 1. find out nulll values of column Name using dplyr commans
library(dplyr)
na_values<-data %>%
  filter(is.na(Name))
View(na_values)


# 2. find out the mean of heigh column using dplyr command

library(dplyr)

mean1<- data %>%
  filter(is.na(Height))
View(mean1)