dataFile <- "./household_power_consumption.txt"
my_data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

subSetData <- my_data[my_data$Date %in% c("1/2/2007","2/2/2007") ,]


global_Active_Power <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_Active_Power, main="Global Active Power", xlab="Global Active Power (kilowatts)",  col="red")

dev.off()