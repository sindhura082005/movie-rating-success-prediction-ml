# -----------------------------------
# K-Means Clustering
# -----------------------------------

library(cluster)
library(factoextra)

# Load cleaned data
movies_ml <- read.csv("data/movies_clean.csv")

# Scale numeric features
scaled_data <- scale(movies_ml[, 1:5])

# K-Means clustering
set.seed(123)
kmeans_model <- kmeans(scaled_data, centers = 3)

# Cluster visualization
png("outputs/kmeans_cluster.png", width = 900, height = 700)
fviz_cluster(
  kmeans_model,
  data = scaled_data,
  geom = "point",
  ellipse.type = "norm",
  ggtheme = theme_minimal()
)
dev.off()
