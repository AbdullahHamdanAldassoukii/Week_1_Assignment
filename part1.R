part1<-function  (data){
        
        ## the origine data after unzip it
        
        ## loading some library
        library(lubridate);
        library(ggplot2);
        library(lattice);
        library(data.table);
        
        ## cleaning data from NA value
       cleaned_data<-data[complete.cases(data),];## data without NA
        
       ## converting the date form :
       cleaned_data$Date<- dmy(data$Date);
       ## just rename the the data:
       target_data<-cleaned_data;
       ## get the target Data (between 2007-02-01 and 2007-02-02):
       target_data<-target_data[((target_data$Date==as.Date("2007-02-02"))|(target_data$Date==as.Date("2007-02-01"))),];
        
       ## plot the  Global_active_power 
       par(mar = c(2,2,1,1));
       op <- par(oma=c(5,7,1,1));
       par(op);
       hist(target_data$Global_active_power,main = "Global_active_power",xlab ="Global_active_power" ,col = "red",);
        
       ## this is just for solving the larg margin error
       par(mar = c(4,4,1,1));
       hist(target_data$Global_active_power,main = "Global_active_power",xlab ="Global_active_power" ,col = "red",);
       
        
        
}##ned function

