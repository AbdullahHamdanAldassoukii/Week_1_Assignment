part2<-function(data){
        
        library(lubridate)
        
        
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
        par(mar = c(2,4,3,3));
        op <- par(oma=c(5,7,1,1));
        par(op);
        
        plot(time_bar,g_bar,type="l",ylab = "Global active power (kiloWatt)" );
        
}##end the function