#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto portal
# Author: Aliza Abbas Mithwani
# Date: 23 September 2024
# Contact: aliza.mithwani@mail.utoronto.ca
# License: MIT
# Pre-requisites: No
# Any other information needed? No


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
ttcbusdelaysdata <- show_package("e271cdae-8788-4980-96ce-6a5c95bc6618")
list_package_resources(ttcbusdelaysdata)
ttcbusdelays2024 <- get_resource(list_package_resources(ttcbusdelaysdata)[12,2])

#### Save data ####
write_csv(ttcbusdelays2024, "./data/raw_data/TTC_raw_data.csv") 

         
