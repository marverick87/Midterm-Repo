read.csv("hw1_data.csv")

data<- read.csv("hw1_data.csv")
task1<- function(data,row, col){
  data[row,col]
  
}
task1(data,82,"Wind")


task2<- function(data,col){
  sum(is.na(data[,col]))
}
task2(data,"Wind")


task3<- function(data,row1,row2,col){
  sub<- data[row1:row2,col]
  mean(sub,na.rm = T)
}
task3(data,30,75,4)

