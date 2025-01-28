```r
data <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols <- c("A", "B", "D")

# Check if all columns exist
if (all(cols %in% names(data))) {
  subset <- data[, cols]
} else {
  missingCols <- cols[!cols %in% names(data)]
  stop(paste("Error: Columns", paste(missingCols, collapse = ", "), "not found in data frame."))
}
```