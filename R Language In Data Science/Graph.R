








# pie chart
library(ggplot2)
# Generate data
sizes <- c(30, 20, 15, 35)
labels <- c("A", "B", "C", "D")

# Create pie chart
piee<-pie(sizes, labels = labels, main = "Pie Chart", col = rainbow(length(sizes)))

# Generate data
sizes <- c(30, 20, 15, 35)
labels <- c("A", "B", "C", "D")

# Set colors
colors <- rainbow(length(sizes))

# Create pie chart
pie(sizes, labels = labels, main = "Pie Chart", col = colors)
#color<- color("red", "blue","yellow", "pink")








# bar chart. 
h1 <- c(30, 20, 15, 35,60)
barplot(h1)

h2<- c(11,2,3,34,74)
m2<- c("feb", "mar", "april", "may","june")
barplot(h2, names.arg = m2, xlab = "Month", ylab = "Revenue", col = "yellow", main = "Revenue bar chart", border = "red")

#legend uses





# line chart

v <- c(30, 20, 15, 35,60)
v
plot(v)
plot(v,type = "o")

plot(v,type = "o", col = "red", xlab = "Month", ylab = "Temperature")


v <- c(13,22,28,7,31) w <- c(11,13,32,6,35) x <- c(12,22,15,34,35)
plot (v, type = "o"
      lines (w,
             lines (x, type = "o",
                  col = "green", xlab="Month", ylab="Temperature")
             
lines(w, type = "o", col = "red")
lines(x, type = "o", col = "blue")






# scatter plot
View(mtcars)
dim(mtcars )
names(mtcars)


data<- mtcars[, c("wt", "mpg")]
data
plot(x= data$wt, y = data$mpg, xlab = "weight", ylab = "Milage", xlim = c(2.5, 5), ylab = c(15,30), main = "weightv/smilage")
