part1<-function  (data){
        
        library(lubridate);
        library(ggplot2);
        library(lattice);
        
        
       data<-data[complete.cases(data),];## data without NA
       
       cleaned_data<-data;
       ## transform the date form :
       
       cleaned_data$Date<- dmy(data$Date);
       
       target_data<-cleaned_data;
       ## get the target Data (between 2007-02-01 and 2007-02-02)
       
       target_data<-target_data[((target_data$Date==as.Date("2007-02-02"))|(target_data$Date==as.Date("2007-02-01"))),];
        
       ## plot the  Global_active_power 
       par(mar = c(2,2,1,1));
       op <- par(oma=c(5,7,1,1));
       par(op);
       
       
       hist(target_data$Global_active_power,main = "Global_active_power",xlab ="Global_active_power" ,col = "red",);
        
       
       par(mar = c(4,4,1,1));
       hist(target_data$Global_active_power,main = "Global_active_power",xlab ="Global_active_power" ,col = "red",);
       
        
        
}##ned function

