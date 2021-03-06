df <- subset(read.csv('household_power_consumption.txt', sep = ';', na.strings='?'), Date == '1/2/2007' | Date == '2/2/2007') 
dateTime = strptime(paste(as.character(df$Date), as.character(df$Time)), format="%d/%m/%Y %H:%M:%S")
png(filename = "plot2.png", width = 480, height = 480)
plot(dateTime, df$Global_active_power, type = 'n', ylab='Global Active Power (kilowatts)', xlab='')
lines(dateTime, df$Global_active_power)
dev.off()