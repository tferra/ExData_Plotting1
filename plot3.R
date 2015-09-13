source("Common.R")

if (!exists("t2")){
  t2 <- LoadData()
}
par(ps=12, bg="transparent", mfrow=c(1,1))
plot(t2$Time, t2$Sub_metering_1,ylab="Energy sub metering",xlab="", type="n")
lines(t2$Time, t2$Sub_metering_1,col="black")
lines(t2$Time, t2$Sub_metering_2,col="red")
lines(t2$Time, t2$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),col=c("black","red","blue"))
SavePNG("plot3.png")