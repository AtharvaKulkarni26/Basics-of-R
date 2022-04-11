# Assignment Question 5 
# write a program to input any value and check whether it is character, numeric or special character


val=readline('Enter any value:')

if(!grepl("^[0-9]+$",val)==FALSE) {
  print("Integer")
} else if (grepl("[[:punct:]]",val)==T) {
  print("Special Character")
} else print("Character")

# 
# x = readline("Enter any value:")  
# 
# if(x = is.integer()) {
#   print("Integer")
# } else print("Character")

