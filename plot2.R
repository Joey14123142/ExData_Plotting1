rawdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
sub <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste0(sub$Date, sub$Time), "%d/%m/%Y %H:%M:%S")
plot(datetime ,sub$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, file = "plot2.png", height = 480, width = 480)
dev.off()
