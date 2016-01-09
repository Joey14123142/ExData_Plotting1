rawdata <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
sub <- rawdata[rawdata$Date %in% c("1/2/2007","2/2/2007"),]

hist(sub$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()