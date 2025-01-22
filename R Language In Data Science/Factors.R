How to create a factor?
  In R, it is quite simple to create a factor. A factor is created in two steps

In the first step, we create a vector.
Next step is to convert the vector into a factor,



## process

factor_data<- factor(vector)  


# example:

data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  
print(data)

print(is.factor(data))

# applying the factor

factor_data<- factor(data)  
print(is.factor(factor_data))


# accesing the componentsof factors
# Creating a vector as input.  
data <- c("Shubham","Nishka","Arpita","Nishka","Shubham","Sumit","Nishka","Shubham","Sumit","Arpita","Sumit")  
data_fcat<- factor(data)
print(data_fcat)

##Accessing 4th element of factor  

print(data_fcat(c[4])
      
      #Accessing 5th and 7th element  
      print(data_fcat[c(5,7)])

      #Accessing all elemcent except 4th one  
      print(factor_data[-4])  

      
      #Accessing elements using logical vector  
      print(factor_data[c(TRUE,FALSE,FALSE,FALSE,TRUE,TRUE,TRUE,FALSE,FALSE,FALSE,TRUE)])  
      
      
      
# modification of fcator
      
      # Creating a vector as input.  
      data <- c("Shubham","Nishka","Arpita","Nishka","Shubham")  
      
      # Applying the factor function.  
      factor_data<- factor(data)  
      
      #Printing all elements of factor  
      print(factor_data)  

      # acesing the 4th element.
      factor_data[[4]] = "Arpita"
      print(factor_data)

      #change 4th element of factor with "Gunjan"  
      factor_data[4] <- "Gunjan"    # cannot assign values outside levels  
      print(factor_data)       
      
      
      #Adding the value to the level  
      levels(factor_data) <- c(levels(factor_data),"Gunjan")#Adding new level  
      factor_data[4] <- "Gunjan"  
      print(factor_data)  

      # adding the value to the value
      
      levels(factor_data) <- c(levels(factor_data), "Gunjan") # Adding new level
      factor_data[4]<-'Gunjan'
      print(factor_data)      

## Factor in Data Frame
      
# Creating the vectors for data frame.  
height <- c(132,162,152,166,139,147,122)  
weight <- c(40,49,48,40,67,52,53)  
gender <- c("male","male","female","female","male","female","male") 
input_data<-data.frame(height, weight, gender)

print(input_data)
## Testing if the gender column is a factor.  
print(is.factor(input_data$gender))


# Printing the gender column to see the levels.  
print(input_data$gender)


## Changing order of the levels

data <- c("Nishka","Gunjan","Shubham","Arpita","Arpita","Sumit","Gunjan","Shubham")  
# Creating the factors  
factor_data<- factor(data)  
print(factor_data)  

## Apply the factor function with the required order of the level.  

new_order_factor<- factor(factor_data,levels = c("Gunjan","Nishka","Arpita","Shubham","Sumit"), ordered = TRUE)  
print(new_order_factor)
