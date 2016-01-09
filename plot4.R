rawdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
sub <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),]

par(mfrow = c(2,2))

plot(datetime ,sub$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

plot(datetime, sub$Voltage, type = "l", ylab = "Voltage")

plot(datetime, sub$Sub_metering_1, xlab = "", ylab = "Energy sub meltering", type = "l")
lines(datetime, sub$Sub_metering_2, col = "red")
lines(datetime, sub$Sub_metering_3, col = "blue")
legend("topright", c("Sub_meltering_1", "Sub_meltering_2","Sub_meltering_3"), col = c("black","red","blue"), lty = 1, lwd = 2)

plot(datetime, sub$Global_reactive_power, type = "l")
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()