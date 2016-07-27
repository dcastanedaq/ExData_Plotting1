#Script for 4th plot

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow=c(2,2))

plot(df$DateTime, df$Global_active_power, pch = ".", ylab = "Global active power", xlab = "", cex.lab = .9)
lines(df$DateTime, df$Global_active_power)


plot(df$DateTime, df$Voltage, pch = ".", ylab = "Voltage", xlab = "", cex.lab = .9)
lines(df$DateTime, df$Voltage)


plot(df$DateTime, df$Sub_metering_1, pch = ".", xlab = "", ylab = "")
lines(df$DateTime, df$Sub_metering_1)
lines(df$DateTime, df$Sub_metering_2, col = "red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")
legend("topright", legend =  c("Sub_Metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", cex = .90, pch = "-", col = c("black", "red", "blue"), lwd = 1)
title(ylab = "Energy sub metering", cex.lab = .9)


plot(df$DateTime, df$Global_reactive_power, pch = ".", ylab = "Global_active_power", xlab = "datetime")
lines(df$DateTime, df$Global_reactive_power)

dev.off()
