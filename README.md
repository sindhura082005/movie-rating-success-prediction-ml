## Movie Rating & Success Prediction using Machine Learning (R)

## Overview
This project explores movie metadata to identify key factors influencing movie success and audience ratings.
Statistical analysis and machine learning models were applied to classify movies into performance categories
(Low, Medium, High) using structured movie attributes.

## Dataset
- Source: Kaggle (Movie Metadata Dataset)
- Records: 5,000+ movies
- Key Features:
  - Budget
  - Revenue
  - Runtime
  - Popularity
  - Vote Average
  - Vote Count

## Project Workflow
1. Data cleaning and preprocessing
2. Exploratory Data Analysis (EDA)
3. Correlation analysis and visualization
4. K-Means clustering with PCA
5. Decision Tree classification
6. Random Forest modeling
7. Model evaluation using feature importance and OOB error

## Key Analysis & Models
### Exploratory Data Analysis
- Correlation heatmaps to identify relationships between financial, popularity, and rating variables

### Clustering
- K-Means clustering applied with PCA for dimensionality reduction
- Segmented movies based on performance characteristics

### Classification Models
- Decision Tree for interpretable rule-based classification
- Random Forest for improved predictive performance and robustness

## Model Evaluation
- Feature importance analysis to identify influential variables
- Out-of-Bag (OOB) error used to assess model generalization

## Key Insights
- Vote count and popularity are the strongest predictors of movie success
- Budget shows strong correlation with revenue but limited direct impact on ratings
- Ensemble models outperform single decision trees in classification stability

## Tools & Technologies
- R
- Packages: ggplot2, caret, randomForest, rpart
- Statistical Analysis & Machine Learning


