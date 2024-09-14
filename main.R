beer_data <- read.csv("beer_consumption.csv")
names(beer_data) <- c("Date",
                      "Average_Temperature",
                      "Min_Temperature",
                      "Max_Temperature",
                      "Precipitation",
                      "Weekend_Indicator",
                      "Beer_Consumption_Liters")

dim(beer_data)