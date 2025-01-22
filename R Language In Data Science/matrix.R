#matrix in r
x<-matrix(c(1,2,3,4,5,6), nrow=3, ncol = 3)
x


x<-matrix(c(1,2,3,4,5,6), nrow=3, ncol = 3,byrow=TRUE)
x

x[2,3]
x[ ,3] #all the rows and 3rd columns.
x[1, ] #first row and all the column.

x[c(1,2), ] #first and second row with all the columns.


# sum of the two matrix.
x<-matric(c(1,2,3,4,5,6), nrow=3,ncol=2)
y<-matric(c(1,2,3,4,5,6),nrow=3,ncol=2))
z<-x+y
z

#input.
{
row <- as.integer(readline(prompt = "enter row matrix : "))
col <- as.integer(readline(prompt = "enter col matrix : "))
matrix1 <- matrix(, nrow = row, ncol = col, byrow = TRUE)
print("enter the elements of matrix1 : ")
for (i in 1:row) {
  for (j in 1:col) {
    matrix1[i, j] <- as.integer(readline())
  }
}
matrix2 <- matrix(, nrow = row, ncol = col, byrow = TRUE)
print("enter the elements of matrix2 : ")
for (i in 1:row) {                                                                   
  for (j in 1:col) {
    matrix2[i, j] <- as.integer(readline())
  }
}
matrix3 <- matrix1 + matrix2
matrix3
}



---------------------------
{
x<-as.integer(readline(prompt="enter row size : "))
matrix1<-matrix("",nrow=x,ncol=3,byrow=TRUE)
colnames(matrix1)=c("ID","NAME","AGE")
matrix1
print("enter id, name and age of student")
for(i in 1:x){
  cat("enter student detail", i)
  for(j in 1:3){
    matrix1[i,j]<-readline()
  }
}
matrix1

}


----------------
#  cbind and rbind function (column and row bind functions)
  
matrix1<-matrix(c(1,2,3,4,5,6), nrow=3, rcol=2)
matrix1
new1<-cbind(matrix1,c(8,9,10))
new1

new2<-rbind(matrix,c(1,2))
new2

--------------------------------------
#array
  
a<-c(1:30). #USING VECTOR
a

b<-array(a,dim=c(4,3,1))
b

a[2,3,1] #2nd, 3rd column and first dimension.
a[c(1), ,1]. # firstrow, all the column and first dimension

a[ , c(1), 1] #all rows, first column and first dimension
length(a). #length of array
diim(a). #number of rows and columns of array.












