source('./data.R')

par(bg=NA)
par(mfrow=c(1,1))

hist(data$Global_active_power, main = 'Global Active Power', col = 'red', xlab = 'Global Active Power (kilowatts)')
dev.copy(png, './plots/plot1.png')
dev.off()