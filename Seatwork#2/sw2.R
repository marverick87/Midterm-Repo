 read.csv("midetrmseatwork_data.csv")
 meanfucntion(datatset)
 meanfucntion<- function(dataset_csv,removeNA = T){
   col_num<- ncol(dataset_csv)
   mean_per_col<- numeric(col_num)
   for(element in 1:col_num){
     mean_per_col[element]<- mean(dataset_csv[ ,element],na.rm = removeNA)
     
   }
   mean_per_col
 }
 meanfucntion(datasot[4])
 
 
 
 ######################
 
 x<-read.csv("midetrmseatwork_data.csv")
 
 meanfunction<- function(dataset_csv,min,max){
 subset_param<- ifelse(dataset_csv$Ozone>min & dataset_csv$Temp>max,dataset_csv$Wind,NA)
 mean(subset_param,na.rm = T)
}
 
 meanfunction(x,50,77)
 
 
 
 
 
 
 ######################################
 MeanFunction <- function(data,Month,Day){
   y <- 0
   for (row in 1:nrow(data)) {
     y[row]<- ifelse(data[row,5]==Month & data[row,6]==Day,data[row,4],NA)
   }
   mean(y,na.rm = TRUE)
 }
 MeanFunction(x,6,7)
 
 
 #########################################
 
 Function <- function(data,Month){
   y <- 0
   for (row in 1:nrow(data)) {
     y[row]<- ifelse(data[row,5]==Month,data[row,1],NA)
   }
   min(y,na.rm = TRUE)
 }
 Function(x,5)
 Function(x,6)
 Function(x,7)
 Function(x,8)
 Function(x,9)
 
 