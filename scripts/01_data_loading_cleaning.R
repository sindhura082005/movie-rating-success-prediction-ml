# -----------------------------------
# Data Loading & Cleaning
# -----------------------------------

library(tidyverse)
library(readr)

# Load dataset
movies <- read_csv("data/tmdb_5000_movies.csv")

# Select relevant features and remove missing values
movies_ml <- movies %>%
  select(budget, revenue, runtime, popularity, vote_average, vote_count) %>%
  na.omit()

# Create rating class (target variable)
movies_ml$rating_class <- cut(
  movies_ml$vote_average,
  breaks = c(-Inf, 4, 7, Inf),
  labels = c("Low", "Medium", "High"),
  right = TRUE
)

# Remove NA target rows if any
movies_ml <- movies_ml %>% drop_na(rating_class)

# Save cleaned data
write.csv(movies_ml, "data/movies_clean.csv", row.names = FALSE)

# Quick check
str(movies_ml)
