# TASKS

library("rstudioapi")
library("here")
library("sf")
library("data.table")
library("dplyr")

if (isAvailable()) {
    wd <- dirname(getActiveDocumentContext()$path)
} else {
    wd <- here()
}
setwd(wd)

source("tests.R")

# The two files in the data folder postcodes.rds and municipalities.rds
# include shapes of all German postcodes and municipalities.
# The postcode identifier is 'plz', while municipalities are
# identified by 'ags'. The shapes are relevant for all tasks.
# The file postcode_table.csv includes data at the postcode level, relevant
# for the third task.

# Task 1: Please calculate how many postcodes are in multiple municipalities
#         and provide the postcode that has the largest number of intersections
#         with municipalities. Also, please provide the identifiers (ags) of
#         municipalities that the postcode intersects with.
#
#         Hints: Pay attention to projections and warnings. Furthermore, there
#                are four postcodes that do not intersect with municipalities.

# Task 2: Please determine the postcode with the largest area. Additionally.
#         provide the corresponding area in square kilometers rounded to
#         the nearest integer.

# Task 3: The file postcode_table.csv includes a variable 'var' at the
#         postcode level. We want to compute a value of this variable at
#         the municipality level for the municipalities in 'ags_to_use'.
#         (Do not try to solve the task for all municipalities, as this
#         might take too long.)
#         To compute municipality-level values, we, first, want to assign
#         postcodes to the corresponding municipalities, construct weights
#         based on overlap between postcodes and municipalities, and, then,
#         compute a weighted average for all municipalities in question.
#         Please provide the municipality with the largest and the smallest
#         variable value.
#
#         Hints: The warning  'attribute variables are assumed to be spatially
#                constant throughout all geometries' can be ignored.
#                There might be some issues with the shape -- try to fix them.
#                Also, note that some plz and ags are featured multiple times.

# TASK SOLUTIONS

# Task 1

# Hint: To check your results, assign the number of postcodes in multiple
#       municipalities to variable 'postcode_mult', the postcode with
#       the largest number of intersections to 'postcode_max', and the
#       municipalities belonging to 'postcode_max' to
#       'postcode_max_municipalities'. You can check them using the
#       corresponding functions below. All other results can be checked
#       in a similar way.

# ...

check_postcode_mult(postcode_mult)
check_postcode_max(postcode_max)
check_postcode_max_municipalities(postcode_max_municipalities)

# Task 2

# ...

check_postcode_area_max(postcode_area_max)
check_area_max(area_max)

# Task 3

ags_to_use <- c(
    8119085, 9176451, 9272452, 14730030, 11000000, 5111000, 6412000, 2000000,
    5315000, 9162000, 8111000, 1001000
)

# ...

check_ags_var_max(ags_var_max)
check_ags_var_min(ags_var_min)
