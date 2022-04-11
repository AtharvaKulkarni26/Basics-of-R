# Assignment Question 2

# R's basic data types are character, numeric, integer, complex, and logical.

# R's basic data structures include the vector, list, matrix, data frame, and factors. Some of these structures require that all members be of the same data type (e.g. vectors, matrices) while others permit multiple data types (e.g. lists, data frames).

# Objects may have attributes, such as name, dimension, and class.

# Vector
vec <- c(1,2,3,4,5)
vec

# list
list_data <- list("Red", "blue", "green",c(12,13,14,15), TRUE, 99.8, 97.6)
list_data

# matrix
matrix_eg <- matrix(1:9, byrow = TRUE, nrow = 3)
matrix_eg

# data frame
df <- data.frame(col1 = 1:3, 
                 col2 = c("this", "is", "text"), 
                 col3 = c(TRUE, FALSE, TRUE), 
                 col4 = c(2.5, 4.2, pi))
df

# factors
data <- c("East","West","East","North","North","East","West","West","West","East","North")
factor_data <- factor(data)