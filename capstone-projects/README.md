# Global Life Expectancy & Sustainability: A Predictive Analytics Study

## 📌 Project Overview
This project leverages **PySpark** and high-dimensional sustainability data (2000–2018) from the World Sustainability Dataset (found at https://www.kaggle.com/datasets/truecue/worldsustainabilitydataset?resource=download) to identify the core environmental, economic, and social drivers of global life expectancy. By integrating large-scale data processing with machine learning, the study explores how infrastructure, education, and resource management impact human longevity across different geopolitical landscapes.

## 🎯 Objectives
The primary goal of this project was to develop a predictive model for global life expectancy using the sustainability indicators found in the dataset.
* **Identify Key Drivers:** Isolate the strongest predictors of life expectancy from 40+ sustainability indicators using distributed correlation analysis and feature importance ranking.
* **Mitigate Multicollinearity:** Implement a custom logic to filter highly correlated independent variables to ensure model stability and interpretability.
* **Predictive Modeling:** Develop and benchmark **Random Forest** and **Gradient Boosted Tree (GBT)** regressors to accurately forecast life expectancy based on a nation's sustainability profile.
* **Temporal Analysis:** Track the evolution of predictor strength over two decades.

## 🛠 Tech Stack
* **Data Processing:** PySpark (Spark SQL & DataFrames)
* **Machine Learning:** PySpark MLlib (Pipelines, VectorAssembler, Cross-Validation)
* **Visualization:** Seaborn, Matplotlib (Heatmaps, Residual Plots, Temporal Trend Lines)
* **Environment:** Distributed Big Data Environment 

## 📊 Key Insights & Methodology

### Feature Engineering & Selection
The project began with a comprehensive **Pairwise Correlation Matrix** to visualize the relationships between variables like GDP, CO2 damage, and education. To optimize the machine learning models, a recursive filtering process was used to remove redundant features, leaving the following key determinants:
* **Access to Electricity (% of population)**: The strongest positive driver ($r \approx 0.72$).
* **Natural Resources Depletion**: A significant negative pressure on longevity ($r \approx -0.41$).
* **Education & Financial Depth**: Metrics like 'Children out of school' and 'Broad Money' provided critical social context.

### Model Performance
Two ensemble models were evaluated:
* **Random Forest Regressor:** Provided a stable baseline with high interpretability and clear feature importance.
* **Gradient Boosted Trees (GBT):** Iteratively reduced residuals to capture non-linear "S-Curve" relationships, particularly in infrastructure thresholds.

### Temporal Stability
Through a **Temporal Correlation Analysis**, we found that while the influence of infrastructure remains a "structural constant," the impact of digital connectivity and social indicators has shifted significantly between 2000 and 2018.

## 📈 Results
The final RF model achieved an **R-Squared ($R^2$)** of approximately `0.94` and **Root Mean Squared Error (RMSE)** of `2.04` years, demonstrating that social, economic, governmental, and environmental factors are all powerful factors in life expectancy.

---

### How to Run
1.  Ensure you have a Spark session active.
2.  Load the dataset into a Spark DataFrame named `df`.
3.  Run the modeling pipeline to train and evaluate the GBT and Random Forest models.
