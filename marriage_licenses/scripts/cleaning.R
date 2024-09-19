#### Preamble ####
# Purpose: Cleans raw marriage data into an analysis dataset
# Author: Michelle Ji
# Date: 19 September 2024
# Contact: michelle.ji@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))
  
ggplot(cleaned_data, aes(x = date, y = marriage_licenses)) + # Line plot
  geom_point(color = "red", size = 2) + # Add points for each date
  labs(
    title = "Marriage Licenses Issued Over Time",
    x = "Date",
    y = "Number of Marriage Licenses"
  ) +
  theme_minimal() +
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1))

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
