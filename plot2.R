a<-read.table("household_power_consumption.txt",sep =";",header = TRUE,na.strings = "?")
b<-as.Date(a$Date,format = "%d/%m/%Y")
x<-as.Date("2007-02-01")
y<-as.Date("2007-02-02")
c<-b == x| b == y
a<-a[c,]
plot(a$Global_active_power,xlab = " ", ylab = "Global Active Power(kilowatts)",type = "n" )
lines(a$Global_active_power)
dev.copy(png,file="plot2.png")