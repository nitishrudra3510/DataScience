

# File input/Output Functions
# 1. read.csv() = read information from a csv file
read.csv() function in R Language is used to read “comma separated value” files. It imports data in the form of a data frame.

Syntax:
  read.csv(file, header, sep, dec) Parameters: file: the path to the file containing the data to be imported into R. header: logical value. If TRUE, read.csv() assumes that your file has a header row, so row 1 is the name of each column. If that’s not the case, you can add the argument header = FALSE. sep: the field separator character dec: the character used in the file for decimal points.


# Example 1:

data<- read.csv("/Users/nitishkumar/Downloads/ds_salaries.csv", header = FALSE, sep = "\t")
print(data)

# alternative way:
setwd("/Users/nitishkumar/Downloads")
data<-read.csv("ds_salaries.csv", header = FALSE, sep = "\t")
print(data)



#Reading files from different directories 

data<- read.csv("/Users/nitishkumar/Downloads/ds_salaries.csv")
print(data)

# reading a csv files with a different delimeter


data<- read.csv("/Users/nitishkumar/Downloads/ds_salaries.csv", sep = ";")
print(data)


# Treating the first row as column names
data <- read.csv("path/to/your/file.csv", header = TRUE)
print(data)


#***** Write.csv() = publishes informat vb fvdAsdion to write a CSV file.

Syntax: write.csv(data, path)

Parameter:
  
  data: data to be added to csv
path: pathname of the 

#Approach:
Create a DataFrame
Pass required values to the function
Write to file


Country <- c("China", "India", "United States", "Indonesia", "Pakistan") 

Population_1_july_2018 <- c("1,427,647,786", "1,352,642,280", 
                            "327,096,265", "267,670,543", "212,228,286") 

Population_1_july_2019 <- c("1,433,783,686", "1,366,417,754", 
                            "329,064,917", "270,625,568", "216,565,318") 

change_in_percents <- c("+0.43%", "+1.02%", "+0.60%", "+1.10%", "+2.04%") 


data <- data.frame(Country, Population_1_july_2018, Population_1_july_2019, change_in_percents) 
print(data)




# lets write this data to a csv file and save it to a required locations


Country <- c("China", "India", "United States", "Indonesia", "Pakistan") 

Population_1_july_2018 <- c("1,427,647,786", "1,352,642,280", 
                            "327,096,265", "267,670,543", "212,228,286") 

Population_1_july_2019 <- c("1,433,783,686", "1,366,417,754", 
                            "329,064,917", "270,625,568", "216,565,318") 

change_in_percents <- c("+0.43%", "+1.02%", "+0.60%", "+1.10%", "+2.04%") 


data <- data.frame(Country, Population_1_july_2018, Population_1_july_2019, change_in_percents) 
print(data) 

write.csv(data,"/Users/nitishkumar/Downloads/population.csv") 
print ('CSV file written Successfully :)')





# Read.table(). = reads information from a tabular;

### Reading Files in R Programming

In R programming, storing and retrieving data from files is a crucial aspect, ensuring data persistence and ease of access. This is particularly essential in scenarios where large datasets need to be handled efficiently. R provides simple yet powerful functions to accomplish file input/output operations.

#### Importance of File Handling
- When a program terminates, data stored in memory is lost. Storing data in files ensures data persistence even after program termination.
- Handling large volumes of data becomes more manageable with file storage compared to manual data entry.
- Data stored in files can be easily transferred between systems without alterations.
- Files can be stored in various formats, such as plain text (e.g., `.txt`), tabular (e.g., `.csv`), or even accessed directly from the internet or cloud storage.

#### Methods for Reading Files in R
One of the commonly used formats for storing data is in a text file. R offers multiple methods to read data from text files. Among them, the `read.delim()` function is frequently used for reading tab-separated value files (`*.txt`).

##### `read.delim()` Function
- **Purpose**: Reads tab-separated value files.
- **Syntax**: `read.delim(file, header = TRUE, sep = "\t", dec = ".", ...)`
- **Parameters**:
  - `file`: Path to the file containing the data to be read into R.
- `header`: Logical value. If `TRUE`, assumes the file has a header row where row 1 contains the column names. Set to `FALSE` if the file lacks a header row.
- `sep`: Field separator character. Default is `"\t"` for tab-delimited files.
- `dec`: Character used in the file for decimal points.

#### Example Usage:
```R
# Example usage of read.delim() function
data <- read.delim("data.txt", header = TRUE, sep = "\t", dec = ".")
```

#### Notes:
- Ensure to provide the correct file path (`file`) while using `read.delim()`.
- Adjust the `header`, `sep`, and `dec` parameters based on the structure and formatting of the text file.

By leveraging these file reading functions in R, handling data becomes more efficient and scalable, facilitating various data analysis tasks.








# R Excel file


Excel files are of extension .xls, .xlsx and .csv(comma-separated values). To start working with excel files in R Programming Language, we need to first import excel files in RStudio or any other
R supporting IDE(Integrated development environment).





R Excel file

1. install the xlsv package
2. Varifying and loading the xlsx package
3. creating the xlsv file
4. reading the excel file
5.Writing into the excel file..



Install xlsx Package
Our primary task is to install "xlsx" package with the help of install.package command. When we install the xlsx package, it will ask us to install some additional packages on which this package is dependent. For installing the additional packages, the same command is used with the required package name. There is the following syntax of install command:
  
install.packages("package name")   




# examples:
  
  install.packages("xlsx")


  # Verifying and loading of "xlsv" Package

  In R, grepl() and any() functions are used to verify the package. If the packages are installed, these functions will return True else return False. For verifying the package, both the functions
  are used together.
  
  For loading purposes, we use the library() function with the appropriate package name. This function loads all the additional packages also.



  #Installing xlsx package  

  
  # Verifying the package is installed.  
  any(grepl("xlsx",installed.packages()))  
  
  # Loading the library into R workspace.  
  library("xlsx")  


# creating the excel files...
  Like the CSV file, we can read data from an excel file. R provides read.xlsx() function, which takes two arguments as input, i.e., file name and index of the sheet. 
  This function returns the excel data in the form of a data frame in the R environment. 

read.xlsx(file_name, sheet_index)



# examples..

#loading the xlsx package
library("xlsx")

#reading the first worksheet in the file employee .xlsx

excel_data <- read.xlsx("Historicalinvesttemp.xlsx", sheetindex=1)
print(excel_data)




Reading Excel Files in R Programming Language
First, install readxl package in R to load excel files. Various methods including their subparts are demonstrated further.




Reading Files:
  The two excel files read from the working directory.


install.packages("readxl")

library(readxl)


data1<-read_excel("/Users/nitishkumar/Downloads/Historicalinvesttemp.xlsx")

data2<-read_excel("/Users/nitishkumar/Downloads/SaleData.xlsx")

head(data1)
head(data2)






# Modifying Files

The Sample_data1.xlsx file and Sample_file2.xlsx are modified.



data1$Pclass<-0

data2$Pclass <- "S"

head(data1)
head(data2)



#Deleting Content from files
The variable or attribute is deleted from Data1 and Data2 datasets containing Sample_data1.xlsx and Sample_data2.xlsx files.

# deleting from the files..
Data1 <- data1[-2]

Data2 <- data2[-3]

# printing the data
Data1
Data2





#Merging Files
The two excel datasets Data1 and Data2 are merged using mer

Data3<- merge(Data1, Data2, all.x = TRUE, all.y = TRUE)

head(Data3)
print(Data3)




### creating feature in Data1 dataset 

new columns or features can be created in Data1 and Data2 datasets

Data1$Num <- 0

Data2$Code <- "Mission"

head(Data1)
head(Data2)




#Writing Files
After performing all operations, Data1 and Data2 are written into new files using write.xlsx() function built in writexl package.



install.packages("writexl")

library(writexl)
#writing Data1
write_xlsx(Data1, "New_Data.xlsx")

write_xlsx(Data2, "New_Data2.xlsx")


