data<-read.csv("household_power_consumption.txt", sep = ";", header=FALSE, na.strings="?", skip=66637, nrows=2880)
data<-subset(data, Date %in% c("1/2/2007" ,"2/2/2007"))
par(mfrow=c(1,1))
with(data, hist(Global_active_power, col="red", 
                xlab="Global Active Power (kilowatts)", 
                yaxp=c(0,1200,6),
                main="Global Active Power"
                ))
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()