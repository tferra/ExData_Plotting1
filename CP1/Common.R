LoadData <- function()
{
  t1 <- read.table("household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
  t1$Time = strptime(paste(t1$Date,t1$Time), "%d/%m/%Y %H:%M:%S")
  t1$Date = as.Date(t1$Date, format = "%d/%m/%Y")
  t2 <- t1[t1$Date %in% c(as.Date("1/2/2007", format = "%d/%m/%Y"),as.Date("2/2/2007", format = "%d/%m/%Y")),]
  t2
}

SavePNG <- function(filename = "plot.png"){
  dev.copy(png,file=filename, width=480,height=480)
  dev.off()
}