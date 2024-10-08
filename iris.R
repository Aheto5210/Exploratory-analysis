
#########################
# Loading Iris data set
#########################

# Method 1
library(datasets)
data(iris)

iris2 <- datasets::iris

# Method 2
# install.packages("RCurl")
# install.packages("dplyr")

library(RCurl)
library(dplyr)

iris3 <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/master/iris.csv") )

# View the data
View(iris)

#############################
# Display summary statistics
#############################

# head() / tail()
head(iris, 5)
tail(iris, 5)


# summary()
summary(iris)
summary(iris$Sepal.Length)


# Check to see if there are missing data?
sum(is.na(iris))


# skimr() - expands on summary() by providing larger set of statistics
#  install.packages("skimr")
# https://github.com/ropensci/skimr

library(skimr)

skim(iris) # Perform skim to display summary statistics

# Group data by Species then perform skim
iris %>% 
  group_by(Species) %>% 
  skim() 

#############################
# Quick data visualization
#
# R base plot()
#############################


# Panel plots
plot(iris)
plot(iris, col = "red")

# Scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length)

plot(iris$Sepal.Width, iris$Sepal.Length, col = "red")     # Makes red circles

plot(iris$Sepal.Width, iris$Sepal.Length, col = "red",     # Makes red circles + Adds x and y axis labels
     xlab = "Sepal width", ylab = "Sepal length")

# Histogram
hist(iris$Sepal.Width)
hist(iris$Sepal.Width, col = "blue")
# Makes red bars

# Feature plots
