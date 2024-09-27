#### Preamble ####
# Purpose: Simulates the dates covered in the data set with the incident number
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: No
# Any other information needed? No


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
set.seed(750)

# Define the start and end date
start_date <- as.Date("2024-01-01")
end_date <- as.Date("2024-08-31")

# Set the number of random dates you want to generate
number_of_dates <- 100

#Define hours and minutes to simulate times
random_hours <- sample(0:23, number_of_dates, replace = TRUE)
random_minutes <- sample(0:59, number_of_dates, replace = TRUE)
times <- sprintf("%02d:%02d", random_hours, random_minutes)

#Simulate types
incident_types <- c("Cleaning - Unsanitary", "Collision - TTC", "Diversion", 
              "Emergency Services", "General Delay", "Investigation", 
              "Mechanical", "Operations - Operator", "Road Blocked - NON-TTC", 
              "Security", "Utilized Off-Route", "Vision")


data <-
  tibble(# Simulate random dates within the Jan-Aug range
    date = as.Date(
      runif(
        n = number_of_dates,
        min = as.numeric(start_date),
        max = as.numeric(end_date)
      ),
      origin = "1970-01-01"
    ), # Simulate the (type of) incident
    incident = sample(incident_types, number_of_dates, replace = TRUE)
    , # Already simulated time
    time = times , # Simulate delay in minutes
    min_delay = rpois(n = number_of_dates, lambda = 10)
    )

#### Write_csv
write_csv(data, file = "./data/raw_data/TTC_simulated_data.csv")



