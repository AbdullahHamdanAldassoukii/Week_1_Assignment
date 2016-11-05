part3<-function(data){
        
        library(lubridate)
        
        
        data<-data[complete.cases(data),];## data without NA
        
        cleaned_data<-data;
        ## transform the date form :
        
        cleaned_data$Date<- dmy(data$Date);
        
        target_data<-cleaned_data;
        target_data<-target_data[((target_data$Date==as.Date("2007-02-02"))|(target_data$Date==as.Date("2007-02-01"))),];
        
        ##make the time bar for the plot
        
        time_bar<-as.POSIXct(paste(target_data$Date,target_data$Time),tz="UCT")
        
        par(mar = c(2,4,3,3));
        op <- par(oma=c(5,7,1,1));
        par(op);
        
        
        plot(time_bar,target_data$Sub_metering_1,type = "l",ylab = "Global Active Power(KiloWatt)");
        lines(time_bar,target_data$Sub_metering_2,col="red");
        lines(time_bar,target_data$Sub_metering_3,col="blue");
        
        c<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3");
        legend(pch = "_","topright",col = c("black", "red","blue"),legend = c);


}## end function        