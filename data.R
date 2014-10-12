if( ! file.exists('./data/household_power_consumption.txt') )
    unzip('./data/household_power_consumption.zip', exdir='./data')

data <- read.csv2('./data/household_power_consumption.txt', colClass = 'character')
data <- subset(data, Date == '1/2/2007' | Date == '2/2/2007')


## That is so bad but I didn't manage to parse date properly. Believe me, I tried so hard
data[data=='1/2/2007'] <- '02/01/07'
data[data=='2/2/2007'] <- '02/02/07'

class(data$Global_active_power) <- 'numeric'

data$datetime <- strptime(paste(data$Date, data$Time),  "%m/%d/%y %H:%M:%S")