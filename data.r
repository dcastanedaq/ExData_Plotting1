##reading the power data

#Removes everything from the global environment
rm(list = ls())

df <- read.table("household_power_consumption.txt", header =  TRUE, sep = ";", na.strings = "?")
df$Date = as.Date(df$Date, "%d/%m/%Y")

df <- subset(df, Date == "2007-02-01" | Date == "2007-02-02")

df$DateTime <- as.POSIXct(paste(df$Date, df$Time)) 