#Load data into EPC. Skip rows to get to Feb. 1, 2007. Readings taken every minute and need points for 2 days, 2*24*60=2880
epc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", skip=66636, nrows=2880)

library(datasets)
gap <- epc[,3]


hist(gap, xlab ="Global Active Power (kilowatts)", ylab = "Frequency", col = "orangered", main = paste("Global Active Power"))
axis(side=2, at=seq(0,1200, by=200), labels=seq(0,1200, by=200))

dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px") 
dev.off()
