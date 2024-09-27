#### Preamble ####
# Purpose: Cleans the raw data and makes it ready for analysis
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: Make sure to run 01-download_data.R to get the raw data
# Any other information needed? No

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("./data/raw_data/TTC_raw_data.csv")

cleaned_data <- 
  #turn the column names into lower case with underscores instead of gaps
  raw_data |>
  janitor::clean_names() |>
  # ensure the delay amount is a number
  mutate(min_delay = as.numeric(min_delay)) |>
  # ensure the incident type is a string
  mutate(incident = as.character(incident)) |>
  # Remove time that showed up when writing the xlsx file to csv
  mutate(date = gsub("T00:00:00Z", "", date)) |>
  mutate(time = strptime(time, format = "%H:%M")) |>
  #drop any rows with missing/NA values
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "./data/analysis_data/TTC_analysis_data.csv")

