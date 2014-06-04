## Load and tidy the data
tidy <- function() {
    df <- read.table("household_power_consumption.txt", header = TRUE, sep=";")
    ## get a subset
    sub <- subset(df, Date == "1/2/2007" | Date == "2/2/2007")
    ## Convert date as Date format
    sub$Date <- as.Date(sub$Date, "%d/%m/%Y")
    ## Create a new column with the date and time
    sub$DateTime <- strptime(paste(sub$Date, sub$Time), "%Y-%m-%d %H:%M:%S")
    ## Remove date and time columns
    drops <- c("Date", "Time")
    sub <- sub[,!(names(sub) %in% drops)]
    sub$Global_active_power <- as.numeric(as.character(sub$Global_active_power))
    sub$Global_reactive_power <- as.numeric(as.character(sub$Global_reactive_power))
    sub$Voltage <- as.numeric(as.character(sub$Voltage))
    sub$Global_intensity <- as.numeric(as.character(sub$Global_intensity))
    sub$Sub_metering_1 <- as.numeric(as.character(sub$Sub_metering_1))
    sub$Sub_metering_2 <- as.numeric(as.character(sub$Sub_metering_2))
    sub$Sub_metering_3 <- as.numeric(as.character(sub$Sub_metering_3))
    sub
}