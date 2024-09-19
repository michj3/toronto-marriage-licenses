#### Preamble ####
# Purpose: Simulates data
# Author: Michelle Ji
# Date: 19 September 2024
# Contact: michelle.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
# install.packages("tidyverse")
library(tidyverse)
# install.packages("tibble")
library(tibble)
#### Simulate data ####
set.seed(3)

start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")
n <- 10

data <- 
  tibble(
    date = as.Date(runif(n = 10, min = as.numeric(start_date), 
                         max = as.numeric(end_date))),
    number_of_marriages = rpois(n = 100, lambda = 15),
    
  )


#### Write csv ####

write_csv(data, file = "data/raw_data/simulated.csv")



