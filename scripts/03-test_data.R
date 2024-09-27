#### Preamble ####
# Purpose: Sanity test of data
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: Make sure to run 02-data_cleaning.R to get analysis data
# Any other information needed? No


#### Workspace setup ####
library(tidyverse)

# Analysis data
analysis_data <- read_csv("./data/analysis_data/TTC_analysis_data.csv")

# Test that data is strictly from 2024 (should return TRUE)
all(substr(analysis_data$date, 1, 4) == "2024")

# Test that the delay amount is a numeric value and positive (should return TRUE)
all(is.numeric(analysis_data$min_delay) == TRUE & analysis_data$min_delay >= 0)

# Test that all incidents are strings (should return TRUE) 
all(is.character(analysis_data$incident) == TRUE)

#### Simulated data ####
simulated_data <- read_csv("./data/raw_data/TTC_simulated_data.csv")

# Test for negative numbers (should return FALSE)
simulated_data$min_delay |> min() <= 0

# Test for NAs (all should return FALSE)
all(is.na(simulated_data$min_delay))
all(is.na(simulated_data$incident))
all(is.na(simulated_data$time))
all(is.na(simulated_data$min_delay))
all(is.na(simulated_data$date))

