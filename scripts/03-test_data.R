#### Preamble ####
# Purpose: Sanity test of data
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)

# test data
analysis_data <- read_csv("./data/analysis_data/TTC_analysis_data.csv")

# Test that data is strictly from 2024
all(substr(analysis_data$date, 1, 4) == "2024")

# Test that the delay amount is a numeric value and positive
all(is.numeric(analysis_data$min_delay) == TRUE & analysis_data$min_delay >= 0)

# Test that all incidents are strings
all(is.character(analysis_data$incident) == TRUE)

#### Test data ####
raw_data <- read_csv("./data/raw_data/TTC_simulated_data.csv")

# Test for negative numbers
raw_data$number_of_incident |> min() <= 0

# Test for NAs
all(is.na(data$number_of_incident))

