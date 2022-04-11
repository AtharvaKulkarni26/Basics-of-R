# Assignment Question 10
# Create a new column for iris dataset with the name of Means_of_obs, which contains mean value of each row.( using dplyr package)

data("iris")
head(iris)
tail(iris)

# Mutate a new column into the dataset which calculates the mean value for each row.
df <- iris
df %>% mutate(Means_of_obs = rowMeans(across(where(is.numeric))))
df
