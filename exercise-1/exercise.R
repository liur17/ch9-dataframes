# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in the first 4 games of their season
# Hint: (google "Seahawks scores")
scored.points <- c(48, 13, 13, 17)
# Create a vector of the number of points the Seahawks have allowed to be scored against them in the first 4 games
allowed.points <- c(17, 20, 26, 13)

# Combine your two vectors into a dataframe
hawk.data <- data.frame(scored.points, allowed.points)
colnames(hawk.data) <- c("Seahawk Points", "Allowed Points")

# Create a new column "diff" that is the difference in points
diff <- scored.points - allowed.points
hawk.data$diff <- diff
#or hawk.data[diff]
# Create a new column "won" which is TRUE if the Seahawks wom
hawk.data$won <- diff > 0

# Create a vector of the opponents
opponents <- c("Chargers", "Vikings", "Chiefs", "Raiders")

# Assign your dataframe rownames of their opponents
rownames(hawk.data) <- opponents