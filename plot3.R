##Script for Plot #3

#Activate png file to write to.
png(filename = "plot3.png", width = 480, height = 480, units = "px")

#Beginning plot
plot(df$DateTime, df$Sub_metering_1, pch = ".", xlab = "", ylab = "")

#adding the lines for each of the sub-metering fields.
lines(df$DateTime, df$Sub_metering_1)
lines(df$DateTime, df$Sub_metering_2, col = "red")
lines(df$DateTime, df$Sub_metering_3, col = "blue")

legend("topright", legend =  c("Sub_Metering_1", "Sub_metering_2", "Sub_metering_3"), cex = .9, pch = "-", col = c("black", "red", "blue"), lwd = 2)

title(ylab = "Energy sub metering", cex.lab = .9)

dev.off()
