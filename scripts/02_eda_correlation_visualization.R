# -----------------------------------
# EDA & Correlation Analysis
# -----------------------------------

library(corrplot)

# Load cleaned data
movies_ml <- read.csv("data/movies_clean.csv")

# Summary statistics
summary(movies_ml)

# Correlation matrix
cor_matrix <- cor(movies_ml[, 1:6])

# Heatmap
png("outputs/heatmap.png", width = 900, height = 700)
corrplot(
  cor_matrix,
  method = "color",
  type = "full",
  tl.col = "black",
  tl.srt = 45
)
dev.off()
