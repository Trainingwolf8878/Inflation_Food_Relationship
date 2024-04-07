#### Preamble ####
# Purpose: Simulates the data 
# Author: Lin Dai
# Date: 6 April 2024
# Contact: dailin200007302gmail.com

# Work space set up

install.packages("tidyverse")
install.packages("janitor")

# load the package

library(tidyverse)
library(janitor)

# Set random seed to ensure reproducibility

set.seed(302)

# Generate date sequence from January 2017 to December 2023

dates <- seq(as.Date("2017-01-01"), as.Date("2023-12-01"), by = "month")

# Initialize an empty data frame

data <- data.frame(date = as.Date(character()), 
                   beef = numeric(), 
                   pork = numeric(), 
                   chicken = numeric(), 
                   milk = numeric(), 
                   eggs = numeric(), 
                   inf_rate = numeric(), 
                   av_wage1 = numeric(), 
                   av_wage2 = numeric(),
                   gas_price = numeric(),
                   emp_rate = numeric())

# Loop to generate data for each month

for (date in dates) {
  
  # Generate random data for each variable
  
  beef <- runif(1, min = 5, max = 15)
  pork <- runif(1, min = 5, max = 15)
  chicken <- runif(1, min = 5, max = 15)
  milk <- runif(1, min = 1, max = 3)
  eggs <- runif(1, min = 2, max = 5)
  inf_rate <- runif(1, min = -1, max = 2)
  av_wage1 <- runif(1, min = 16, max = 25)
  av_wage2 <- runif(1, min = 16, max = 25)
  gas_price <- runif(1, min = 90, max = 170)
  emp_rate <- runif(1, min = 50, max = 70)
  
  # Add data for the current month to the data frame
  
  data <- rbind(data, data.frame(date = date,
                                 beef = beef,
                                 pork = pork,
                                 chicken = chicken,
                                 milk = milk,
                                 eggs = eggs,
                                 inf_rate = inf_rate,
                                 av_wage1 = av_wage1,
                                 av_wage2 = av_wage2,
                                 gas_price = gas_price,
                                 emp_rate = emp_rate))
}

# Reset row names

rownames(data) <- NULL

# Create a sequence of dates from January 2017 to December 2023

date <- seq(as.Date("2017-01-01"), as.Date("2023-12-01"), by = "month")

# Sort the original data by date
data <- data[order(data$date), ]

# Replace the dates in the original data with the new sequence of dates
data$date <- dates

# Save the modified data to a new CSV file
write.csv(data, "simulated_data.csv", row.names = FALSE)
