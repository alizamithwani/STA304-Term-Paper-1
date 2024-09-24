#### Preamble ####
# Purpose: Simulates... [...UPDATE THIS...]
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Simulate data ####
set.seed(750)

# Define the start and end date
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-08-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

data <-
  tibble(
    dates = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ),
  number_of_incident = rpois(n = number_of_dates, lambda = 10)
  )


#### Write_csv
write_csv(data, file = "./data/raw_data/TTC_simulated_data.csv")



