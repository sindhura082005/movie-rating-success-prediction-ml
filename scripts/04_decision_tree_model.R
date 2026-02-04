# -----------------------------------
# Decision Tree Model
# -----------------------------------

library(caret)
library(rpart)
library(rpart.plot)

# Load cleaned data
movies_ml <- read.csv("data/movies_clean.csv")

# Train-test split
set.seed(123)
index <- createDataPartition(movies_ml$rating_class, p = 0.8, list = FALSE)
train <- movies_ml[index, ]
test  <- movies_ml[-index, ]

# Train Decision Tree
dt_model <- rpart(
  rating_class ~ budget + revenue + runtime + popularity + vote_count,
  data = train,
  method = "class",
  control = rpart.control(cp = 0.01)
)

# Plot Decision Tree
png("outputs/decision_tree.png", width = 1100, height = 800)
rpart.plot(
  dt_model,
  type = 2,
  extra = 104,
  fallen.leaves = TRUE,
  main = "Decision Tree for Movie Rating Classification"
)
dev.off()
