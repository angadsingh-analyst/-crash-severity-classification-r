# Crash Severity Classification Using R

This project applies machine learning classification techniques in R to predict crash severity using driver involvement and road safety data. The analysis compares multiple models, including Random Forest, K-Nearest Neighbours and Logistic Regression, with a focus on identifying fatal crash outcomes.

The project demonstrates classification modelling, resampling methods, model evaluation and road safety analytics.

---

## Project Overview

Crash severity prediction can support road safety analysis by helping identify patterns associated with more severe crash outcomes. This project uses structured crash-related data to classify crash severity and compare the performance of different modelling approaches.

The project considered both binary and multiclass classification. The binary classification task focused on distinguishing fatal crashes from non-fatal crashes, while the multiclass task explored broader crash severity categories.

---

## Objectives

- Prepare crash and driver involvement data for modelling
- Build binary and multiclass classification models
- Compare Random Forest, KNN and Logistic Regression approaches
- Address class imbalance using resampling techniques
- Evaluate models using accuracy, sensitivity, balanced accuracy, AUC and Kappa
- Communicate findings through RMarkdown reports and presentation outputs

---

## Dataset

The project uses crash-related driver involvement data with variables describing crash severity and driver characteristics.

The modelling task focused on crash severity outcomes, including:

- Fatal crashes
- Non-fatal crashes
- Multiple crash severity classes in the multiclass modelling task

The cleaned repository includes the supporting data file used for the analysis.

---

## Methods

The workflow included:

- Data preparation in R
- Feature cleaning and transformation
- Creation of binary fatal/non-fatal outcome variables
- Train-test splitting
- Class imbalance handling
- Random Forest modelling
- K-Nearest Neighbours modelling
- Logistic Regression modelling
- Model comparison using classification metrics
- Visualisation of predicted versus actual outcomes

Resampling methods considered included:

- Downsampling
- Upsampling
- ROSE
- SMOTE

---

## Key Results

The project found that crash severity classification was challenging due to class imbalance, especially for fatal crash detection.

Key modelling outcomes included:

- KNN achieved strong fatal crash sensitivity compared with other models.
- Random Forest performed reasonably under resampling but showed trade-offs between accuracy and sensitivity.
- Logistic Regression provided an interpretable baseline model.
- Binary classification was more practical than multiclass classification for this dataset.
- Model evaluation required looking beyond accuracy because fatal crashes were underrepresented.

---

## Skills Demonstrated

- R programming
- RMarkdown reporting
- Classification modelling
- Random Forest
- K-Nearest Neighbours
- Logistic Regression
- Class imbalance handling
- Model evaluation
- Confusion matrix interpretation
- Road safety analytics
- Data visualisation

---

## Repository Structure

```text
.
├── README.md
├── CLEANING_NOTES.md
├── requirements.txt
├── .gitignore
├── 01_data_preparation.Rmd
├── 02_binary_random_forest.Rmd
├── 03_knn_model.Rmd
├── 04_logistic_regression.Rmd
├── 05_multiclass_random_forest.Rmd
├── data/
│   └── DriverInvolvement.csv
├── figures/
│   └── actual_vs_predicted_bar.png
└── presentation/
    └── Crash_Severity_Analysis_Overview_Clean.pdf
```

---

## How to Run

Open the RMarkdown files in RStudio and run them in order:

```text
01_data_preparation.Rmd
02_binary_random_forest.Rmd
03_knn_model.Rmd
04_logistic_regression.Rmd
05_multiclass_random_forest.Rmd
```

The supporting dataset is located in:

```text
data/DriverInvolvement.csv
```

---

## Tools

- R
- RStudio
- RMarkdown
- caret
- randomForest
- class
- pROC
- ggplot2

---

## Data Availability

This repository includes a cleaned portfolio version of the crash severity classification project, including analysis scripts, supporting data and selected output materials.

Personal identifiers, team/member details and submission-specific documents have been removed.

---

## Portfolio Note

This repository is shared as a public portfolio example of applied classification modelling in R, with a focus on model comparison, class imbalance and practical interpretation of road safety data.

---

## Author

Angad Singh  
Master of Predictive Analytics  
Perth, Western Australia
