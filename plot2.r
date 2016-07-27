#script for plot #2

png(filename = "plot2.png", width = 480, height = 480, units = "px")

#Start the plot without any labels
plot(df$DateTime, df$Global_active_power, pch = ".", xlab = "", ylab = "")

#Connecting the dots
lines(df$DateTime, df$Global_active_power)

#Adding the y-label and making it a bit smaller
title(ylab = "Global Active Power (killowatts)", cex.lab = .9)

dev.off()