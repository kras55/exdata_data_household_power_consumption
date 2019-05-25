df <- subset(read.csv('household_power_consumption.txt', sep = ';', na.strings='?'), Date == '1/2/2007' | Date == '2/2/2007') 
png(filename = "plot1.png", width = 480, height = 480)
with(df, hist(Global_active_power, col='red', breaks=12, xlab='Global Active Power (kilowatts)', main='Global Active Power'))
dev.off()