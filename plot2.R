power.df <- read.csv("household_power_consumption.txt", header = T, sep = ";", colClasses = "character")
power.df$Date <- as.Date(power.df$Date, format = "%d/%m/%Y")
power2.df <- subset(power.df, (Date >= "2007-02-01") & (Date <= "2007-02-02"))
png(filename="plot2.png",  width = 480, height = 480, units = "px")
plot(as.numeric(power2.df$Global_active_power), type = "l", xlab = "Global Active Power (kilowatts)")

dev.off()?