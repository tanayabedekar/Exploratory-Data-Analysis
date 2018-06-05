## Getting full dataset
full_data <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
full_data$Date <- as.Date(full_data$Date, format = "%d/%m/%Y")

## Subsetting the data
hpc1 <- subset(full_data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(full_data)

## Converting dates
datetime <- paste(as.Date(hpc1$Date), hpc1$Time)
hpc1$Datetime <- as.POSIXct(datetime)

## Generating Plot 2
plot(hpc1$Global_active_power ~ hpc1$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

## Save file and close device
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()