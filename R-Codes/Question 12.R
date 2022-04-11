# Assignment Question 12
# create below plots for the mtcars also write your inferences for each and every plot (use ggplot package) Use Different ( Size , Colour )

data(mtcars)
mtcars
df <- mtcars

library(ggplot2)
library(dplyr)

# scatter plot
scatplot <- ggplot(mtcars, aes(hp, mpg)) + geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ylab("Miles per Gallon") +
  xlab("No. of Horsepower") +
  ggtitle("Impact of Number of Horsepower on MPG")
scatplot

# Inference
# It can be inferred from this scatterplot that as the horsepower of a particular
# vehicle increases it has a negative impact on the miles per gallon.The miles per 
# gallon of a vehicle decreases with the increase in HP giving it a negative correlation.

# Box Plot

box.p <- boxplot(mtcars$mpg ~ mtcars$cyl, main = "Box Plot of Mileage vs Number of Cylinders", xlab = "Number of Cylinders", ylab = "Miles per Gallon", 
                 col = "pink")
box.p

# Inference
# It can be inferred from this box plot that average miles per gallon per car is higher for
# lower number of cylinders that is mpg decreases as the number of cylinders increase, we can also
# notice that the cylinder ground 8 has a outlier with a very low miles per gallon value.
# It can also be inferred that there is high variablity in the mpg values of cars with 4 cylinders
# as compared to cars with 6 or 8 cylinders this is shown by the bigger interquartile range in the box with
# 4 cylinders as compared to 6 or 8 cylinders.

# Histogram
colors <- c("Red","Blue","Green","Yellow","Purple")

hist(mtcars$mpg,
     col = colors,
     main = "Miles Per Gallon - Histrogram",
     breaks = 10,
     xlim = range(10:35),
     xlab = "MPG",
     ylab = "number of vehicles")

# Inference
# The histogram shows the frequency of vehicles with respect to the miles per gallon, it can
# be inferred that the maximum number of vehicles are in the 14 - 15 mpg range.

# Line graph

lc <- ggplot(mtcars, aes(x = hp, y = mpg,
                         group = cyl, color = cyl))

lc + geom_line()

# Inference 
# It can be clearly inferred from this chart that when the cylinder count in the car is
# is low the miles per gallon in high and the horse power is low but as the cylinder count 
# increases from to 6 and 8 the horse power of the vehicle goes up and the miles per gallon
# decreases.

# bar graph
stacked_count <- table(mtcars$cyl, mtcars$gear)
barplot(stacked_count, main="Car Distribution by Number of Gears and Cylinders",
       xlab="Number of Gears", col=c("darkblue","red","darkgreen"),
       legend = rownames(stacked_count), args.legend = list(title = "Number of Cylinders"))

# Inference 
# This stacked bar graph shows the distribution of cars based on the number of gears an number of cylinders.
# For the gear level 3, only one car has 4 cylinders, 2 cars have 6 clinders and the rest 12 of them have cylinders.
# Similarly for the gear level 4 there are no cars with 8 cylinders the data is distributed between 4 and 6 cylinders.
# Gear level 5 has only 5 cars, 2 of which have 4 cylinders, 1 has 6 and the rest 2 have 8 cylinders.
