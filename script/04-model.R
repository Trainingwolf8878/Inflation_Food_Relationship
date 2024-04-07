#### Preamble ####
# Purpose: Model set up 
# Author: Lin Dai
# Date: 6 April 2024
# Contact: dailin200007302gmail.com

# Work space set up

library(tidyverse)
library(tidymodels)
library(modelsummary)
library(nflverse)
library(dplyr)
library(readr)

# Import data

data <- read_csv("data/clean_data/clean_data.csv")

# seperate the data

data_train <- data %>%
  filter(date <= as.Date("2020-12-01"))

data_test <- data %>%
  filter(date > as.Date("2020-12-01"))

# Set model 1 and model 2

first_model_tidymodels <-
  linear_reg() |>
  set_engine(engine = "lm") |>
  fit(
    inf_rate ~ beef + chicken + pork + gas_price + emp_rate  ,
    data = data_train
  )

second_model_tidymodels <-
  linear_reg() |>
  set_engine(engine = "lm") |>
  fit(
    inf_rate ~ beef + chicken + pork + gas_price + emp_rate + av_wage1 + av_wage2,
    data = data_test
  )

modelsummary(list("Model 1" = first_model_tidymodels,
                  "Model 2" = second_model_tidymodels))
