'''
  Consider the following table:

Name Age Gender Height Weight
Alice 25 Female 160 55
Bob 30 Male 175 70
Charlie 28 Male 180 80
Diane 35 Female 155 50


'''

install.packages("tidyverse")
library(tidyverse)

original_data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Diane"),
  Age = c(25, 30, 28, 35),
  Gender = c("Female", "Male", "Male", "Female"),
  Height = c(160, 175, 180, 155),
  Weight = c(55, 70, 80, 50)
)

'''
Explain the concept of "tidy data" in the context of the tidyverse.
Demonstrate how the principles of tidy data can be applied to transform the given 
table using the tidyverse functions. Provide the transformed table and the corresponding 
code using functions like gather() and spread().

'''





data_frame1 <- original_data %>%
  gather(key = "Variable", value = "Value", -Name, -Gender) %>%
  spread(key = Variable, value = Value)

  
print(data_frame1)