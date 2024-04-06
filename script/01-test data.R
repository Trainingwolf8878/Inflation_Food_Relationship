#### Preamble ####
# Purpose: test the data of clean_data.csv
# Author: Lin Dai
# Date: 6 April 2024

# Import data

library(readr)
clean_data <- read_csv("data/clean_data/clean_data.csv")
data <- clean_data

# Check the missing value

missing_values <- colSums(is.na(data))
print(missing_values)

# Check the type of each variable

variable_types <- sapply(data, class)
print(variable_types)

# Test the variable is integer or not

all_integers <- sapply(data, function(var) all (var == as.integer(var)))

if (all(all_integers)) {
  print("yes")
} else {
  print("no")
}

