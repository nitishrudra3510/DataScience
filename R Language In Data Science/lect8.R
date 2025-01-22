# you are data analyst at an e-commerce company, your task is to analyze the sales data to provide the insight to managemnet
team. the dataset contains the information about the sales transaction including the product category, quatity, sold and revenue generated .
Your goal is to create a function that calculates the total revenue and quantity sold for each product.

#dataframe - product category, quantity, unit price
revenue=quantity*unit price;

X <- data.frame(
  product_category = integer(),
  q = integer(),
  unit_price = integer()
)

for (i in 1:5) {
  E_id <- as.integer(readline(prompt = "Enter the product category: "))
  E_name <- as.integer(readline(prompt = "Enter the iquantity: "))
  E_salary <- as.integer(readline(prompt = "Enter the unit price: "))
  Y <- data.frame(product_category = E_id, q = E_name, unit_price = E_salary)
  X <- rbind(X, Y)
}

calculate_sale <- function(X) {
  # Calculate total revenue and quantity sold for each product category
  sales_summary <- aggregate(cbind(q, unit_price) ~ product_category, data = X, FUN = sum)
  colnames(sales_summary) <- c("Product_Category", "Total_Quantity", "Total_Revenue")
  return(sales_summary)
  revenue<-aggregate(q*unit_price~product)
}

# Call the function with the dataset
sales_summary <- calculate_sale(X)
print(sales_summary)
x <- 3
vec <- c(10, 20, 30, 40, 50)
result <- mean(vec[-1])
print(result)

