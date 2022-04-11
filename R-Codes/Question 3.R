# Assignment Question 3 
# Create Data frame with 3 columns and 5 rows and write a code to fetch and delete row and a column using index and add new column and row to the existed data frame

df <- data.frame("Serial Number" = 1:5, "Name" = c("John","Mary","Becca","Chloe","Linda"), "Age" = c(21,25,36,31,42))
df
str(df)
cbind(df, Gender=c("M","F","F","F","F"))
df$Gender <- NULL
df
df1 <- df[-c(2, 4), ]
df1
