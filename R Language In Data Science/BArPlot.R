# bar plot barchart


t<-c(1,2,3,4,5)
result<-barplot(t)
result


t<-c(1,2,3,4,5)
result<-barplot(t, main = "BARPLOT")
result



t<-c(1,2,3,4,5)
result<-barplot(t, main = "BARPLOT",
                xlab = "X label",
                ylab = "Y label",
                names.arg = c("jan", "Feb", "Mar", "April", "May"),
                col = "blue",
                density = 20,
                horiz = TRUE
                )
result


