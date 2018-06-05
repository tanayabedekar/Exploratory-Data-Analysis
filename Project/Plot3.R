## Generating Plot 3

with(hpc1, {
  plot(Sub_metering_1 ~ Datetime, type = "l", 
       ylab = "Energy sub metering", xlab = "")
  lines(Sub_metering_2 ~ Datetime, col = 'Red')
  lines(Sub_metering_3 ~ Datetime, col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 1, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## Save file and close device
dev.copy(png,"plot3.png", width=480, height=480)
dev.off()