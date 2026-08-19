# Medical Insurance Cost Prediction

![R Language](https://img.shields.io/badge/Language-R-blue.svg)
![Topic](https://img.shields.io/badge/Topic-Data_Analysis_%26_Machine_Learning-brightgreen.svg)
![License](https://img.shields.io/badge/License-MIT-orange.svg)

## 📊 Project Overview
This project performs **Exploratory Data Analysis (EDA)** and builds **Multiple Linear Regression models** to predict medical insurance charges using the Medical Cost Personal Dataset from Kaggle.

The analysis investigates how key factors like age, BMI, smoking status, and obesity interact to influence healthcare costs.

---

## 📁 Dataset
* **Source:** [Kaggle - Medical Cost Personal Dataset](https://www.kaggle.com/datasets/mirichoi0218/insurance)
* **Records:** 1,338 observations
* **Target Variable:** `charges` (Medical insurance cost)

| Feature | Type | Description |
| :--- | :--- | :--- |
| `age` | Numeric | Age of the primary beneficiary |
| `sex` | Categorical | Insurance contractor gender (`male`, `female`) |
| `bmi` | Numeric | Body mass index ($kg/m^2$) |
| `children` | Numeric | Number of children covered by health insurance / dependents |
| `smoker` | Categorical | Smoking status (`yes`, `no`) |
| `region` | Categorical | Beneficiary's residential area in the US (`northeast`, `northwest`, `southeast`, `southwest`) |
| `charges` | Numeric | Individual medical costs billed by health insurance |

---

## 🎯 Objectives
1. Explore relationships between demographics, behaviors, and medical costs.
2. Build and evaluate multiple linear regression models.
3. Investigate the interaction between smoking and obesity as key cost drivers.
4. Provide actionable insights for insurers and policy risk assessment.

---

## 🔧 Tools & Libraries
* **Language:** R
* **Libraries:**
  * `tidyverse` – Integrated suite for data science
  * `ggplot2` – Data visualization
  * `dplyr` – Data manipulation
  * `reshape2` – Data reshaping
  * `corrplot` / `ggcorrplot` – Correlation matrices
  * `readr` – CSV data import

---

## 📈 Model Performance & Key Findings

| Model | Formula | Adjusted $R^2$ | Key Insight |
| :--- | :--- | :--- | :--- |
| **Model 1** | `charges ~ age + bmi + sex + children + smoker + region` | 0.7521 | Good overall fit, but contains non-significant predictors (`sex`, `region`). |
| **Model 2** | `charges ~ age + children + smoker + obese` | 0.7521 | Simplified model; all remaining predictors are statistically significant. |
| **Model 3** | `charges ~ obese * smoker + age + children` | **0.8635** | **Best Fit** – Including the interaction term significantly improves explanatory power. |
| **Model 4** | `charges ~ obese * smoker + age` | 0.8610 | Parsimonious alternative, nearly as accurate as Model 3. |

### Core Findings:
* **Smoking & Obesity Interaction:** Smoking is the strongest single predictor of medical costs, but its combination with obesity creates an exponential jump in insurance charges rather than a simple additive effect.
* **Age:** Charges increase predictably as age increases.
* **Non-Significant Features:** Sex and geographical region do not show statistically significant impacts on medical costs once behavioral and health metrics are accounted for.

---

## 🖼️ Visualizations Included
* Distribution histograms and density plots across numerical attributes.
* Categorical breakdown charts (`sex`, `smoker`, `region`).
* Target cross-comparison boxplots (`charges` vs. `smoker` / `obesity`).
* Predicted vs. Actual value performance scatter plots.
* Diagnostic residual plots (Evaluating homoscedasticity and normality).

---

## 🚀 Getting Started

### Prerequisites
Make sure you have [R](https://www.r-project.org/) and [RStudio](https://posit.co/download/rstudio-desktop/) installed on your machine.

### Installation & Execution

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/Medical-Insurance-Cost-Prediction.git
   cd Medical-Insurance-Cost-Prediction
   ```

2. **Set up the dataset:**
   Ensure the dataset file `insurance.csv` is located in your working directory.

3. **Install required packages:**
   Run the following snippet in your R console:
   ```R
   install.packages(c("tidyverse", "ggplot2", "dplyr", "reshape2", "corrplot", "ggcorrplot", "readr"))
   ```

4. **Run the script:**
   ```R
   source("Code.R")
   ```

---

## 📜 License
This project is open-source and available under the [MIT License](LICENSE).
