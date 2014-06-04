source("tidy.R")
## Load and tidy the data
df <- tidy()
## Setup plot without content
plot(df$DateTime, df$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
## Draw lines
lines(df$DateTime, df$Global_active_power)
## Write image
dev.copy(png, "plot2.png")
dev.off()