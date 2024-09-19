#### Preamble ####
# Purpose: Tests marriage data
# Author: Michelle Ji
# Date: 19 September 2024
# Contact: michelle.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Test data ####

data <- read_csv("data/raw_data/simulated.csv")

# can't have negative number of marriages

data$MARRIAGE_LICENSES |> min() <= 0

#Test for NA
all(is.na(data$MARRIAGE_LICENSES))
