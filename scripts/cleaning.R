#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Rohan Alexander [...UPDATE THIS...]
# Date: 6 April 2023 [...UPDATE THIS...]
# Contact: rohan.alexander@utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <- raw_data %>%
  separate(TIME_PERIOD, into = c("Year", "Month"), sep = "-") %>%
  mutate(TIME_PERIOD = ymd(paste(Year, Month, "01"))) %>%
  select(-Year, -Month)

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
