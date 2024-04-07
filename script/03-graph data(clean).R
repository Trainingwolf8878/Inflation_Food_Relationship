#### Preamble ####
# Purpose: graph from clean data 
# Author: Lin Dai
# Date: 6 April 2024
# Contact: dailin200007302gmail.com

# Work space set up
library(ggplot2)
library(readr)
library(patchwork)

# Import data
clean_data <- read_csv("data/clean_data/clean_data.csv")

# Change the date type with column Date in clean data
clean_data$date <- as.Date(clean_data$Date)

# Rename the file
data <- clean_data

# Plot the data with line graph of daily food price
food_price_plot <- ggplot(data, aes(x = date)) +
  geom_line(aes(y = beef, color = "Beef"), size = 1) +
  geom_point(aes(y = beef, color = "Beef"), size = 3) +
  geom_line(aes(y = pork, color = "Pork"), size = 1) +
  geom_point(aes(y = pork, color = "Pork"), size = 3) +
  geom_line(aes(y = chicken, color = "Chicken"), size = 1) +
  geom_point(aes(y = chicken, color = "Chicken"), size = 3) +
  geom_line(aes(y = milk, color = "Milk"), size = 1) +
  geom_point(aes(y = milk, color = "Milk"), size = 3) +
  geom_line(aes(y = eggs, color = "Eggs"), size = 1) +
  geom_point(aes(y = eggs, color = "Eggs"), size = 3) +
  scale_color_manual(values = c("Beef" = "red", "Pork" = "blue", "Chicken" = "green", "Milk" = "orange", "Eggs" = "purple")) +
  labs(title = "Daily Food Price Trends",
       x = "Date",
       y = "Price",
       color = "Commodity") +
  theme_minimal()

# Plot the data with the wage
wage_plot <- ggplot(data, aes(x = date)) +
  geom_line(aes(y = av_wage1, color = "Average Wage 1"), size = 1) +
  geom_point(aes(y = av_wage1, color = "Average Wage 1"), size = 3) +
  geom_line(aes(y = av_wage2, color = "Average Wage 2"), size = 1) +
  geom_point(aes(y = av_wage2, color = "Average Wage 2"), size = 3) +
  scale_color_manual(values = c("Average Wage 1" = "blue", "Average Wage 2" = "red")) +
  labs(title = "Average Wage Trends",
       x = "Date",
       y = "Average Wage",
       color = "Variable") +
  theme_minimal()

# Plot the employee rate trends
emp_rate_plot <- ggplot(data, aes(x = date, y = emp_rate)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Employment Rate Trend",
       x = "Date",
       y = "Employment Rate") +
  theme_minimal()

# Plot the data of gasoline price trends
gas_price_plot <- ggplot(data, aes(x = date, y = gas_price)) +
  geom_line(color = "red", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Gas Price Trend",
       x = "Date",
       y = "Gas Price") +
  theme_minimal()

# Plot the data of inflation rate trends
inf_rate_plot <- ggplot(data, aes(x = date, y = inf_rate)) +
  geom_line(color = "green", size = 1) +
  geom_point(color = "green", size = 3) +
  labs(title = "Inflation Rate Trend",
       x = "Date",
       y = "Inflation Rate") +
  theme_minimal()

# Combine all plots
combined_plot <- food_price_plot + wage_plot + emp_rate_plot + gas_price_plot + inf_rate_plot

# Show the combined plot
combined_plot

# Combine plots
combined_plot <- gas_price_plot + inf_rate_plot

# Show the combined plot
combined_plot

# Combine all plots
combined_plot <- food_price_plot + emp_rate_plot

# Show the combined plot
combined_plot

