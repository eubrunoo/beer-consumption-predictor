﻿# Beer Consumption Predictor

## Overview
This project aims to analyze the impact of various environmental and temporal factors on beer consumption in a university area in São Paulo, Brazil. The dataset used contains data collected throughout the year 2015, including daily temperature readings, precipitation levels, and information on whether beer was consumed during the weekends.

The ultimate goal is to build a linear regression model that predicts beer consumption based on these variables. The insights derived from this analysis could help in understanding how different factors influence beer consumption and provide a foundation for forecasting future consumption under various scenarios.

## Dataset
The dataset consists of the following columns:
- **Date**: Daily records for the year 2015.
- **Average Temperature**: The average temperature recorded each day (in °C).
- **Minimum Temperature**: The minimum temperature recorded each day (in °C).
- **Maximum Temperature**: The maximum temperature recorded each day (in °C).
- **Precipitation**: The amount of precipitation recorded each day (in mm).
- **Weekend Indicator**: A binary indicator (0 or 1) of whether the beer was consumed on a weekend.
- **Beer Consumption (Liters)**: The amount of beer consumed (in liters) on each day.

## Analysis Plan
1. **Data Exploration**: Begin with exploratory data analysis to understand the distributions, trends, and relationships between variables.
2. **Correlation Analysis**: Assess the correlations between environmental factors (temperature, precipitation) and beer consumption to identify potential predictors.
3. **Categorical Analysis**: Examine the influence of weekends on beer consumption, comparing it with weekdays.
4. **Linear Regression Modeling**: Develop a linear regression model using selected variables to predict daily beer consumption.
5. **Model Evaluation**: Evaluate the model's performance using relevant metrics and interpret the results.
6. **Forecasting**: Use the model to forecast beer consumption under specific scenarios, such as varying temperatures or precipitation levels.

## Contributing
- Contributions are welcome! Feel free to fork the repository and submit a pull request.

## Installation
To replicate this analysis, you'll need to have R installed on your machine. The following R packages are also required:
- `tidyverse`
- `ggplot2`
- `dplyr`
- `lubridate`
- `caret`

You can install these packages using:
```R
install.packages(c("tidyverse", "ggplot2", "dplyr", "lubridate", "caret"))
