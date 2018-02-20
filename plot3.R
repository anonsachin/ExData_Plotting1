a<-read.table("household_power_consumption.txt",sep =";",header = TRUE,na.strings = "?")
b<-as.Date(a$Date,format = "%d/%m/%Y")
x<-as.Date("2007-02-01")
y<-as.Date("2007-02-02")
c<-b == x| b == y
a<-a[c,]
plot(a$Sub_metering_1,xlab = " ",ylab = "Energy sub metering",type = "n")
lines(a$Sub_metering_1,col ="black")
lines(a$Sub_metering_2,col ="red")
lines(a$Sub_metering_3,col ="blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col = c("black","red","blue"))
dev.copy(png,"plot3.png") 
