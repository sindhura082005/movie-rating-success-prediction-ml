# -----------------------------------
# Random Forest Model
# -----------------------------------

library(randomForest)
library(caret)

# Load cleaned data
movies_ml <- read.csv("data/movies_clean.csv")

# Train-test split
set.seed(123)
index <- createDataPartition(movies_ml$rating_class, p = 0.8, list = FALSE)
train <- movies_ml[index, ]
test  <- movies_ml[-index, ]

# Train Random Forest
rf_model <- randomForest(
  rating_class ~ budget + revenue + runtime + popularity + vote_count,
  data = train,
  ntree = 300,
  mtry = 3,
  importance = TRUE
)

# Feature importance plot
png("outputs/rf_feature_importance.png", width = 900, height = 700)
varImpPlot(
  rf_model,
  main = "Feature Importance from Random Forest"
)
dev.off()

# OOB Error plot
png("outputs/oob_error.png", width = 900, height = 700)
plot(
  rf_model,
  main = "OOB Error Rate vs Number of Trees"
)
dev.off()
