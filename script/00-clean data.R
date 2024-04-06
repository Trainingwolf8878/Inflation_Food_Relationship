#### Preamble ####
# Purpose : Clean data and test data_gov.xlsx and change to csv file
# Author : Lin Dai
# Email : dailin20000730@gmail.com
# Date : 6 April 2024

#### Install the package ####

install.packages("dplyr")
library(dplyr)
library(readr)

#### Read the data ####

library(readxl)
data_gov <- read_excel("data/clean_data/data_gov.xlsx")
data <- data_gov

#### missing data imputation ####

data <- na.omit(data)

#### Handling Duplicate Values ####

data <- unique(data)

#### download data ####

write.csv(data, file = "clean_data.csv", row.names = FALSE)

