library('tidyverse')
library('tidyquant')
library('ggplot2')

beer_data <- read.csv("beer_consumption.csv")
names(beer_data) <- c("Date",
                      "Average_Temperature",
                      "Min_Temperature",
                      "Max_Temperature",
                      "Precipitation",
                      "Weekend_Indicator",
                      "Beer_Consumption_Liters")

dim(beer_data)
summary(beer_data)

corr_columns <- c("Average_Temperature", "Precipitation", "Beer_Consumption_Liters")
selected_data <- beer_data[corr_columns]
str(selected_data)

selected_data$Average_Temperature <- gsub(",", ".", selected_data$Average_Temperature)
selected_data$Precipitation <- gsub(",", ".", selected_data$Precipitation)

selected_data$Average_Temperature <- as.numeric(selected_data$Average_Temperature)
selected_data$Precipitation <- as.numeric(selected_data$Precipitation)

invalid_entries <- grepl("invalid number", selected_data$Beer_Consumption_Liters, ignore.case = TRUE)
selected_data <- selected_data[complete.cases(selected_data), ]

M <- cor(selected_data)

png("grafico.png", width = 2000, height = 600)
plot(selected_data$Beer_Consumption_Liters, type = "o")
dev.off()