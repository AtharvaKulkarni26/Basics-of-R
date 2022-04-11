# Assignment Question 9
# Write a function to filter only data belongs to 'setosa' in species of Iris dataset.( using dplyr package) 

install.packages("tidyverse")
data("iris")
filter(iris,Species == "setosa")
