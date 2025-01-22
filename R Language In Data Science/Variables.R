#Variable in R Languages..

# It is used to store the information to be manipulated and referenced in the R langauge.
#It can Store an atomic vector,  a group of atomic vectors, or a combination of many R objects.

"
Language like C++ is statically typed, but R is a dynamically typed, means it check the type of data
type when the statement is run. A valid variable name contains letter, numbers, dot and underlines
characters. A variable name should start with a letter or the dot not followed by a number.

"

# 1._var_name -> invald => it can not store with underscored(_);
# 2. var_name, var.name -> valid => Variable can start with a dot, but dot should not be followed by a number. In this case, the variable will be invalid.
# 3. var_name% ->	Invalid => 	In R, we can't use any special character in the variable name except dot and underscore.
# 4. 2var_name	Invalid	Variable name cant starts with a numeric digit.
# 5. .2var_name	Invalid	A variable name cannot start with a dot which is followed by a 
# 6. var_name2	Valid	The variable contains letter, number and underscore and starts with a letter.

# VARIABLE In R:
"
1. = (Simple Assignment)
2. <- (Leftward Assignemnt)
3. -> (Rightward Assignemnt).

"


For printing we are using two types-> 
  1. print()
  2. cat()-> it is combine the multiples values into a continous print output.
  

  # Assignment using equal operator.  
  .variable = 124  
  variable.1 = 125
  
  # Assignment using leftward operator.  
  variable.2 <- "Learn R Programming"     
  
  # Assignment using rightward operator.     
  133L -> variable.3             
  
  print(.variable)  
  print(variable.1)  
  cat ("variable.1 is ", variable.1 ,"\n")  
  cat ("variable.2 is ", variable.2 ,"\n")  
  cat("Variable.3 is ", variable.3, "\n")
  
  
  
# Data types of variable
  R programming is a dynamically typed language, which means that we can change the data type of the same variable
  again and again in our program. Because of its dynamic nature, a variable is not declared 
  of any data type. It gets the data type from the R-object, which is to be assigned to the variable.
  
variable_y <- 124
cat("The data type of varibles_y is ", class(variable_y), "\n")

variable_y <- "learn R programming.."
cat("Now the data type of variable_y is ", class(variable_y),"\n")

variable_y <- 129L
cat("Next the data type of variable_y becomes ", class(variable_y),"\n")