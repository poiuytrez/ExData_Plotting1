source("tidy.R")
## Load and tidy the data
df <- tidy()

png(filename = "plot4.png", width = 480, height = 480)

## 4 graphs to be displayed
par(mfrow=c(2,2))

## top left
plot(df$DateTime, df$Global_active_power, type="n", ylab="Global Active Power", xlab="")
## Draw lines
lines(df$DateTime, df$Global_active_power)

## top right
plot(df$DateTime, df$Voltage, type="n", xlab="datetime", ylab="Voltage")
lines(df$DateTime, df$Voltage)

## bottom left
plot(df$DateTime, df$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
## Add legend
legend_names <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
colors <- c("black", "red", "blue")
legend("topright", legend_names, col=colors, lty=1, lwd=1)
## Draw graph content
lines(df$DateTime, df$Sub_metering_1, col="black")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")

## bottom right
plot(df$DateTime, df$Global_reactive_power, type="n", xlab="datetime", ylab="Global_reactive_power")
lines(df$DateTime, df$Global_reactive_power)

## Write image
dev.off()
