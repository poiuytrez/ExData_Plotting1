source("tidy.R")
## Load and tidy the data
df <- tidy()
## Setup plot without content
png(filename = "plot3.png", width = 480, height = 480)
plot(df$DateTime, df$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
## Add legend
legend_names <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
colors <- c("black", "red", "blue")
legend("topright", legend_names, col=colors, lty=1, lwd=1)
## Draw graph content
lines(df$DateTime, df$Sub_metering_1, col="black")
lines(df$DateTime, df$Sub_metering_2, col="red")
lines(df$DateTime, df$Sub_metering_3, col="blue")
## Write image
dev.off()