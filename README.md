## Movie Rating & Success Prediction using Machine Learning (R)

### Overview
This project analyzes movie metadata to identify key factors influencing movie success and audience ratings.
Statistical analysis and machine learning models were applied to classify movies into performance categories.

### Dataset
- Source: Kaggle (Movie Metadata Dataset)
- Records: 5,000+
- Features: budget, revenue, runtime, popularity, vote_average, vote_count

### Key Analysis
- Exploratory Data Analysis (EDA) using correlation heatmaps
- K-Means clustering with PCA for audience segmentation
- Decision Tree classification for interpretability
- Random Forest model for feature importance analysis
- Model validation using Out-of-Bag (OOB) error

### Key Insights
- Vote count and popularity are the strongest predictors of movie success
- Higher budgets correlate positively with revenue but not always ratings
- Ensemble models outperform single decision trees

### Tools & Technologies
- R (caret, randomForest, rpart, ggplot2)
- Statistical Analysis & Machine Learning

### Results
Random Forest achieved the most stable performance with lower OOB error, highlighting robust generalization.
