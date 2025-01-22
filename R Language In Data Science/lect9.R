
# Get the current working directory
getwd()

# Set the working directory to "/Users/nitishkumar/Downloads"
setwd("/Users/nitishkumar/Downloads")

# Check if the working directory has been changed successfully
getwd()

# Read the data from the CSV file named "cleandata.csv" into a dataframe called 'input'
input <- read.csv("cleandata.csv")

# Print the contents of the dataframe 'input'
print(input)# it give the output of pdf file data, and write the view(input) in console to the data frame in new file.
view(input)

mean(input$Revenue)

input$Revenue<-gsub("$","",input$Revenue)
input$Revenue

input$Revenue<-gsub("\\$","",input$Revenue)
input$Revenue

means(input$Revenue)



setwd<-c("/Users/nitishkumar/Downloads")
getwd()

input1<-read.csv("breastcancer.csv")
print(input1). # it give the output of pdf file data, and write the view(input) in console to the data frame in new file.
view(input1)


# exact the rows where rows where diagnosis="M";
a<-subset(input1, diagnosis=="M")
a

for(a:input1)
install.packages()


