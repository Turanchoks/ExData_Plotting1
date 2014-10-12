source('./data.R')

par(bg=NA)
par(mfrow=c(1,1))

plot(data$datetime, data$Global_active_power, type="l", ylab = 'Global Active Power (kilowatts)', xlab = '')

dev.copy(png, './plots/plot2.png')
dev.off()