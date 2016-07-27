#R script for the first plot

png(filename = "plot1.png", width = 480, height = 480, units = "px")

hist(df$Global_active_power, col = "red", xlab = "", ylab = "", main = "")
title(main = "Global Active Power")
title(xlab = "Global Active Power (killowatts)")
title(ylab = "Frequency")

dev.off()