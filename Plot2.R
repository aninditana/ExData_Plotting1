> data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")
> subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> globalActivePower <- as.numeric(subSetData$Global_active_power)
> total_data <- length(globalActivePower)
> plot(1:total_data, globalActivePower, type = "l", col = "black", xaxt = "n", xlab = "",  ylab = "Global Active Power (kilowatts)")
> axis(side = 1, at = c(1, total_data/2, total_data), labels = c("Thu", "Fri", "Sat"))