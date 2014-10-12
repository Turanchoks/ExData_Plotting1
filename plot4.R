source('./data.R')

par(bg=NA)
par(mfrow=c(2,2))

plot(data$datetime, data$Global_active_power, type="l", ylab = 'Global Active Power (kilowatts)', xlab = '')

with(data, plot(datetime, Voltage, type="l"))

plot(data$datetime, data$Sub_metering_1, type="n", ylab = 'Energy sub metering', xlab = '')
lines(data$datetime, data$Sub_metering_1)
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend('topright', col = c("black", 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1))

with(data, plot(datetime, Global_reactive_power, type="l"))

dev.copy(png, './plots/plot4.png')
dev.off()
