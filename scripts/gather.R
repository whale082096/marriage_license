#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)

#### Download data ####
marriage_licence_packages <- search_packages("Marriage Licence Statistics")
marriage_licence_resources <- marriage_licence_packages %>%
  list_package_resources()
marriage_licence_statistics <- marriage_licence_resources[2,] %>%
  get_resource()

#### Save data ####
#
write_csv(marriage_licence_statistics, "data/raw_data/raw_data.csv") 

         
