source("Common.R")

if (!exists("t2")){
  t2 <- LoadData()
}
par(ps=12, bg="transparent", mfrow=c(2,2))
plot(t2$Time, t2$Global_active_power, type="n", ylab="Global Active Power", xlab="")
lines(t2$Time, t2$Global_active_power)

plot(t2$Time, t2$Voltage, type="n",xlab="datetime")
lines(t2$Time, t2$Voltage)

plot(t2$Time, t2$Sub_metering_1,ylab="Energy sub metering",xlab="", type="n")
lines(t2$Time, t2$Sub_metering_1)
lines(t2$Time, t2$Sub_metering_2,col="red")
lines(t2$Time, t2$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"), bty = "n")

plot(t2$Time, t2$Global_reactive_power, type="n", xlab="datetime")
lines(t2$Time, t2$Global_reactive_power)
SavePNG("plot4.png")