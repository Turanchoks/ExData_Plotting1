source('./data.R')

par(bg=NA)
par(mfrow=c(1,1))

png('./plots/plot3.png', width=480, height=480)

plot(data$datetime, data$Sub_metering_1, type="n", ylab = 'Energy sub metering', xlab = '')
lines(data$datetime, data$Sub_metering_1)
lines(data$datetime, data$Sub_metering_2, col="red")
lines(data$datetime, data$Sub_metering_3, col="blue")
legend('topright', col = c("black", 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lty=c(1,1))

dev.off()