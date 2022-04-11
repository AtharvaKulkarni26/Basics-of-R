# Assignment Question 6
# write difference between break and next also write examples for both 

# Break Statement
# The break keyword is a jump statement that is used to terminate the loop at a particular iteration.

# Example of Break Statement.

v <- c("Hello","loop")
cnt <- 2

repeat {
  print(v)
  cnt <- cnt + 1
  
  if(cnt > 5) {
    break
  }
}

# Next Statement
# The next statement is used to skip the current iteration in the loop and move to the next iteration without exiting from the loop itself.

# Example of Next Statement.

v <- LETTERS[1:6]
for ( i in v) {  
  
  if (i == "D") {
    next
  }
  print(i)
}

