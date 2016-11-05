part4<-function(data){
        
        library(lubridate)
        par(mar = c(2,4,1,1));
        
        op <- par(oma=c(5,7,1,1));
        par(op);
        par(mfrow=c(2,2));
        
        
        
        ## PLOT [1,1]
        
        
        
        
        data<-data[complete.cases(data),];## data without NA
        
        cleaned_data<-data;
        ## transform the date form :
        
        cleaned_data$Date<- dmy(data$Date);
        
        target_data<-cleaned_data;
        target_data<-target_data[((target_data$Date==as.Date("2007-02-02"))|(target_data$Date==as.Date("2007-02-01"))),];
        
        ##make the time bar for the plot
        time_bar<-as.POSIXct(paste(target_data$Date,target_data$Time),tz="UCT")
        
        ##make the Global_active_power bar
        g_bar<-target_data$Global_active_power;
        
        ##make the plot
        
        
        
        
        
        plot(time_bar,g_bar,type="l",ylab = "Global active power (kiloWatt)" );
        
        ##-------------------------------------------------------
        
        ##plot [1,2]
        
        plot(time_bar,target_data$Voltage,ylab = "Voltage",type = "l",xlab = "datetime");
        
        ##plot [2,1]
        plot(time_bar,target_data$Sub_metering_1,type = "l",ylab = "Global Active Power(KiloWatt)",xlab = "datetime");
        lines(time_bar,target_data$Sub_metering_2,col="red");
        lines(time_bar,target_data$Sub_metering_3,col="blue");
        
        ##plot [2,2]
        
        plot(time_bar,target_data$Global_reactive_power,type = "l",xlab = "datetime",ylab = "Globale reactive Power (KiloWatt)")
        
        
        
        
        
}##end function