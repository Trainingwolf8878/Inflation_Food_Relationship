#### Preamble ####
# Purpose: graph from simulated data and clean data 
# Author: Lin Dai
# Date: 6 April 2024
# Contact: dailin200007302gmail.com

# Import data

library(readr)
clean_data <- read_csv("data/clean_data/clean_data.csv")

# change the date type with column Date in clean data

clean_data$date <- as.Date(clean_data$Date)

# Rename the file

data <- clean_data

# graph the plot

plot(data$date, data$inf_rate, xlab = "Date", ylab = "Inflation Rate", main = "Inflation Rate Over Time", col = "blue", pch = 16, ylim = range(c(data$inf_rate, data$av_wage1, data$av_wage2)))
points(data$date, data$av_wage1, col = "red", pch = 16)
points(data$date, data$av_wage2, col = "green", pch = 16)

# add the name of each point

legend("topright", legend = c("Inflation Rate", "Average Wage 1", "Average Wage 2"), col = c("blue", "red", "green"), pch = 16)

data$Date <- as.Date(data$Date)

# work space set up

library(ggplot2)

# graph the plot

ggplot(data, aes(x = Date)) +
  geom_line(aes(y = beef, color = "Beef")) +
  geom_line(aes(y = chiken, color = "Chicken")) +
  geom_line(aes(y = pork, color = "Pork")) +
  geom_line(aes(y = milk, color = "Milk")) +
  geom_line(aes(y = eggs, color = "Eggs")) +
  geom_line(aes(y = inf_rate, color = "Inflation Rate")) +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Time Series Plot of Variables") +
  scale_color_manual(values = c("Beef" = "blue", "Chicken" = "red", "Pork" = "green", "Milk" = "orange", "Eggs" = "purple", "Inflation Rate" = "black")) +
  theme_minimal()

# graph the plot

ggplot(data, aes(x = Date)) +
  geom_line(aes(y = beef, color = "Beef")) +
  geom_line(aes(y = pork, color = "Pork")) +
  geom_line(aes(y = chiken, color = "Chicken")) +
  geom_line(aes(y = milk, color = "Milk")) +
  geom_line(aes(y = eggs, color = "Eggs")) +
  geom_line(aes(y = av_wage1, color = "Average Wage 1")) +
  geom_line(aes(y = av_wage2, color = "Average Wage 2")) +
  xlab("Date") +
  ylab("Value") +
  ggtitle("Time Series Plot of Variables") +
  scale_color_manual(values = c("Beef" = "blue", "Pork" = "red", "Chicken" = "green", "Milk" = "orange", "Eggs" = "purple", "Average Wage 1" = "cyan", "Average Wage 2" = "magenta")) +
  theme_minimal()
