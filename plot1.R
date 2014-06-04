source("tidy.R")
## Load and tidy the data
df <- tidy()
## Draw histogram
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
## Write image
dev.copy(png, "plot1.png")
dev.off()