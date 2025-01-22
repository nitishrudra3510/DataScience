{
  a<-as.integer(readline(prompt = "enter of a number : "))
  b<-as.integer(readline(prompt = "enter of b number : "))
  c<-as.integer(readline(prompt = "enter of c number : "))
  if(a>b && a>c)
  {
    print(" a is greater")
    
  }else if(b>a && b>c){
    print("b is greater")
  }else{
    print("c is greater")
  }
}



x <- 2
y<-20
while(x<y){
  cat(x)
  x<-x+2
  if(x==10){
    break
  }
}

x <-1  
y<-24  
count=0  
while(x<y){  
  cat(x,"is a smaller number\n")  
  x=x+2  
  if(x==15)  
    break  
}  



{
n1=4  
n2=87  
n3=43  
n4=74  
if(n1>n2){  
  if(n1>n3&&n1>n4){  
    largest=n1  
  }  
}else if(n2>n3){  
  if(n2>n1&&n2>n4){  
    largest=n2  
  }  
}else if(n3>n4){  
  if(n3>n1&&n3>n2){  
    largest=n3  
  }  
}else{  
  largest=n4  
}  
cat("Largest number is =",largest)  
}
