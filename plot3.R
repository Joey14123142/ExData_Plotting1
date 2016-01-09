rawdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
sub <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste0(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S")
plot(datetime, sub$Sub_metering_1, xlab = "", ylab = "Energy sub meltering", type = "l")
lines(datetime, sub$Sub_metering_2, col = "red")
lines(datetime, sub$Sub_metering_3, col = "blue")
legend("topright", c("Sub_meltering_1", "Sub_meltering_2","Sub_meltering_3"), col = c("black","red","blue"), lty = 1, lwd = 2)
dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()