a<-read.table("household_power_consumption.txt",sep =";",header = TRUE,na.strings = "?")
b<-as.Date(a$Date,format = "%d/%m/%Y")
x<-as.Date("2007-02-01")
y<-as.Date("2007-02-02")
c<-b == x| b == y
hist(a$Global_active_power[c],main = " Global Active Power",col = "red",xlab = "Global Active Power(kilowatts)")
dev.copy(png,file="plot1.png")