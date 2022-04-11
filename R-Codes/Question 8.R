# Assignment Question 8
# write a program to get the mode value of the given vector ('a','b','c','t','a','c','r','a','c','t','z','r','v','t','u','e','t')

# There is no mode function in R so we have to write our own.
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

v <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","u","e","t")
result <- getmode(v)
print(result)
