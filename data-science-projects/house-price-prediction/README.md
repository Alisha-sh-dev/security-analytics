# 🏠 House Price Prediction – Machine Learning Project

## 📖 Overview

This project analyzes the **House Prices dataset from Kaggle** to identify the key factors influencing property prices and build predictive models for real estate valuation.

The project demonstrates a complete **machine learning pipeline** including:

- Data collection and cleaning
- Exploratory data analysis (EDA)
- Feature engineering and encoding
- Regression models (Linear, Polynomial, Ridge, Lasso, Elastic Net)
- Classification models (Logistic Regression, KNN, Decision Tree, Random Forest, SVM)
- Cluster analysis (K-means with Elbow Method)
- Model evaluation and visualization

---

## 🎯 Project Objectives

1. **Identify** the main factors affecting house prices
2. **Build** regression models to predict SalePrice
3. **Develop** classification models to categorize houses (Low/Medium/High)
4. **Perform** cluster analysis to segment properties
5. **Provide** data-driven recommendations for real estate strategy

---

## 📊 Dataset

| Attribute | Details |
|-----------|---------|
| **Source** | Kaggle – House Prices Dataset |
| **Dependent Variable** | `SalePrice` |
| **Independent Variables** | Area, Bedrooms, Bathrooms, Floors, YearBuilt, Location, Condition, Garage |
| **Records** | 1,460+ (split 80/20 for training/testing) |

---

## 🛠️ Technologies Used

| Library | Purpose |
|---------|---------|
| **pandas** | Data manipulation and analysis |
| **numpy** | Numerical computations |
| **scikit-learn** | Machine learning models and preprocessing |
| **scipy** | Statistical testing (Pearson/Spearman correlation, T-tests) |
| **matplotlib** | Data visualization |
| **seaborn** | Statistical visualizations |

---

## 🔬 Methodology

### 1. Data Preprocessing

| Step | Method |
|------|--------|
| **Missing Values** | Imputed with mean |
| **Duplicate Removal** | Duplicate records removed |
| **Categorical Variables** | Label Encoding (binary) + One-Hot Encoding (nominal) |
| **Feature Scaling** | StandardScaler for models sensitive to feature magnitudes |
| **Data Split** | 80% training, 20% testing (`train_test_split`) |

### 2. Regression Models

| Model | RMSE (AED) | R² Score |
|-------|------------|----------|
| **Linear Regression** | - | - |
| **Polynomial Regression (Degree 2)** | - | - |
| **Ridge** | - | - |
| **Lasso** | - | - |
| **Elastic Net** | 279,427.44 | -0.0036 |

**Best Model:** Elastic Net Regression

### 3. Classification Models

| Model | Accuracy |
|-------|----------|
| Logistic Regression | - |
| KNN | - |
| Decision Tree | - |
| Random Forest | - |
| **SVM** | **36.00%** |

**Best Model:** SVM (Support Vector Machine)

### 4. Cluster Analysis (K-Means)

| Method | Optimal Clusters |
|--------|------------------|
| **Elbow Method** | k=3 |
| **Dendrogram** | k=3 |

**Clusters Identified:**
- **Cluster 1:** Small/Economy Houses (First-time buyers, investors)
- **Cluster 2:** Medium/Standard Houses (Families, professionals)
- **Cluster 3:** Large/Premium Houses (High-income buyers, luxury seekers)

### 5. Statistical Analysis

| Test | Purpose | Finding |
|------|---------|---------|
| **Pearson Correlation** | Linear relationship between GrLivArea and SalePrice | p-value < 0.05 (significant) |
| **Spearman Correlation** | Monotonic relationship | p-value < 0.05 (significant) |
| **One-Sample T-Test** | Compare sample mean to population mean | p-value > 0.05 (not significantly different) |

### 6. Sampling Techniques

| Method | Description |
|--------|-------------|
| **Random Sampling** | n=150, equal chance for all records |
| **Systematic Sampling** | Regular interval selection |

---

## 📈 Key Visualizations

### Descriptive Statistics
Mean: 180,000+ AED
Median: 160,000+ AED
Standard Deviation: ~80,000 AED



### Observed vs. Predicted (Elastic Net)
Scatter plot showing prediction accuracy

### Confusion Matrix (SVM – Best Classifier)
| | Predicted Low | Predicted Medium | Predicted High |
|---|---------------|------------------|----------------|
| **Actual Low** | - | - | - |
| **Actual Medium** | - | - | - |
| **Actual High** | - | - | - |

### Cluster Visualization (PCA)
3D scatter plot showing three distinct property segments

---

## 📊 Key Findings

### Regression
- **Elastic Net** performed best with RMSE of **279,427.44 AED**
- Strongest predictors: **GrLivArea** (living area) and **YearBuilt**
- Feature scaling improved model performance for Ridge, Lasso, and Elastic Net

### Classification
- **SVM** achieved **36.00% accuracy** on test data
- Balanced distribution: Low (132), Medium (132), High (136)

### Clustering
- **Three distinct market segments** identified
- **Cluster 3 (Premium)** shows highest property values
- **Cluster 1 (Economy)** targets entry-level buyers

---

## 🏢 Strategic Recommendations

| Cluster | Target Audience | Marketing Strategy |
|---------|-----------------|-------------------|
| **Cluster 1: Small/Economy Houses** | First-time buyers, students, investors | Focus on affordability, renovation potential, financing options |
| **Cluster 2: Medium/Standard Houses** | Families, professionals | Emphasize value for money, family features, neighborhood amenities |
| **Cluster 3: Large/Premium Houses** | High-income buyers, luxury seekers | Premium pricing, luxury positioning, smart home features, exclusive viewings |

---

## 📁 Files Included

| File | Description |
|------|-------------|
| `House-Price-Prediction-Report.pdf` | Full project report |
| `house_price_analysis.ipynb` | Jupyter notebook with full code |
| `house_prices.csv` | Dataset (Kaggle House Prices) |
| `requirements.txt` | Python dependencies |
| `README.md` | This overview |

---

## 🧠 Skills Demonstrated

| Skill | Application |
|-------|-------------|
| **Data Cleaning** | Handling missing values, removing duplicates |
| **Feature Engineering** | Encoding categorical variables, scaling |
| **Regression Modeling** | Linear, Polynomial, Ridge, Lasso, Elastic Net |
| **Classification Modeling** | Logistic Regression, KNN, Decision Tree, Random Forest, SVM |
| **Cluster Analysis** | K-Means, Elbow Method, Dendrogram, PCA visualization |
| **Statistical Testing** | Pearson/Spearman correlation, T-tests |
| **Data Visualization** | Matplotlib, seaborn, scatter plots, histograms, boxplots |
| **Object-Oriented Programming** | Reusable Python functions |

---

## 🔗 Relevance to Cybersecurity

While this is a data science project, the skills are **directly transferable** to cybersecurity:

| Data Science Skill | Cybersecurity Application |
|--------------------|---------------------------|
| **Anomaly Detection** | Intrusion detection, fraud detection |
| **Classification** | Malware classification, phishing detection |
| **Clustering** | Threat intelligence, user behavior analytics |
| **Statistical Analysis** | Security metrics, risk assessment |
| **Data Visualization** | Security dashboards, incident reporting |
| **Regression** | Risk scoring, predictive analytics |

---

## 📚 References

- Kaggle (2026). *House Price Prediction Dataset*
- Python Software Foundation (2026). *Python Language Reference*
- Scikit-learn (2026). *Machine Learning in Python*
- Matplotlib (2026). *Visualization with Python*
- Pandas (2026). *Python Data Analysis Library*
- Anaconda (2026). *Getting Started with Anaconda*

---

