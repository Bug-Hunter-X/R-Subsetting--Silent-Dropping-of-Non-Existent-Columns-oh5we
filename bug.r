```r
# This code attempts to subset a data frame using a character vector containing column names.
# However, it fails when one or more of the specified columns do not exist in the data frame.
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D") # Column "D" does not exist
subset <- data[, cols]
```