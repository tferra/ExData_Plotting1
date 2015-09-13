source("Common.R")

if (!exists("t2")){
t2 <- LoadData()
}
par(ps=12, bg="transparent", mfrow=c(1,1))
plot(t2$Time,t2$Global_active_power,ylab="Global Active Power (Kilowatts)",xlab="", type="n")
lines(t2$Time,t2$Global_active_power)
SavePNG("plot2.png")