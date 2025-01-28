# R Subsetting Bug: Silent Dropping of Non-Existent Columns

This repository demonstrates a subtle but potentially problematic behavior in R when subsetting data frames using character vectors for column selection.  If the character vector contains column names that do not exist in the data frame, R silently drops those columns without issuing a warning.  This can lead to unexpected results and difficult-to-debug errors.

The `bug.r` file contains code that reproduces the issue.  The `bugSolution.r` file provides a solution to address this by explicitly checking for the existence of columns before subsetting.

## How to Reproduce

1. Clone this repository.
2. Open `bug.r` in your R environment.
3. Run the code. Observe that the resulting subset does not contain an error, despite the attempt to select a non-existent column.

## Solution

The `bugSolution.r` file provides a safer approach that uses `%in%` to check if all specified columns exist before subsetting.