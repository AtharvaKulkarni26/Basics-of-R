# Assignment Question 11
# Filter data for the "versicolor" and get only 'sepel_length' and Sepel _width' columns.( using dplyr package)

# select the dplyr package 
library(dplyr)
# select the iris dataset
df <- iris
# Filter the iris dataset using the dplyr package
df1 <- filter(df,Species == "versicolor" )
df1
# select the Sepal.Length and Sepal.Width column
df_res <- select(df1,Sepal.Length, Sepal.Width, Species)
df_res
