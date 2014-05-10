prj1 <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", quote = "\"", dec = ".", fill = TRUE, comment.char = "")
prj1$Date <- as.Date(prj1$Date, format='%d/%m/%Y')
finalData <-  prj1[prj1$Date %in%  as.Date(c('2007-02-01','2007-02-02')), ]
png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(finalData$Global_active_power)), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()