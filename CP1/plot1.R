source("Common.R")

if (!exists("t2")){
  t2 <- LoadData()
}
par(ps=12, bg="transparent", mfrow=c(1,1))
hist(t2$Global_active_power, col="red", xlab = "Global Active Power (Kilowatts)", main="Global Active Power")
SavePNG("plot1.png")