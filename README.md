# Crash Severity Classification in R

## Project Overview

This project applies supervised machine learning to predict crash severity using Australian driver involvement data. The main goal is to identify fatal crash risk patterns and compare classification models that can support road safety analysis and policy targeting.

The project includes binary classification for fatal versus non-fatal crash detection and a multiclass baseline across five crash severity levels. Because class imbalance made the multiclass task difficult, the final analysis focuses mainly on binary fatal crash detection.

## Dataset

The dataset contains Australian crash records from 2001 to 2023 and includes 21,349 rows in the supplied CSV file. Crash severity is represented using year, police region, severity category, driver involvement indicators and casualty counts.

Key driver involvement features include:

- Male driver involvement
- Female driver involvement
- Young driver involvement
- Senior driver involvement
- Provisional driver involvement
- Overseas licensed driver involvement
- Unlicensed driver involvement

## Methods

- Converted Yes/No driver involvement fields into binary 1/0 variables.
- Created a `FatalBinary` target variable where fatal crashes are coded as 1 and all other outcomes as 0.
- Applied an 80/20 train-test split.
- Addressed class imbalance using resampling methods.
- Compared Random Forest, KNN and Logistic Regression models.
- Tested a multiclass Random Forest baseline across five crash severity levels.
- Evaluated models using balanced accuracy, fatal sensitivity, AUC, Kappa and confusion matrices.

## Models Compared

### Random Forest

Random Forest was tested using multiple resampling strategies:

- Downsampling
- Upsampling
- ROSE
- SMOTE

The upsampled Random Forest model achieved:

- Balanced Accuracy: 62.20%
- Fatal Sensitivity: 67.84%
- AUC: 0.701
- Kappa: 0.1226

### K-Nearest Neighbours

KNN required a small noise adjustment because binary features created tied distances. A small random noise value was added to allow the model to run successfully.

The KNN model achieved the strongest overall performance:

- Balanced Accuracy: 66.20%
- Fatal Sensitivity: 74.20%
- AUC: 0.713
- Kappa: 0.126

### Logistic Regression

Logistic Regression was used as an interpretable baseline model. Both a full model and a reduced model using backward selection were compared.

The full Logistic Regression model achieved:

- Balanced Accuracy: 59.00%
- Fatal Sensitivity: 38.03%
- AUC: 0.679
- Kappa: 0.1128

## Key Findings

- KNN achieved the strongest overall performance for fatal crash detection.
- Random Forest provided a balanced modelling approach and useful feature importance outputs.
- Logistic Regression had lower fatal sensitivity, showing limitations for this nonlinear and imbalanced classification problem.
- Important predictors included female driver involvement, overseas licensed driver involvement and provisional driver involvement.
- Class imbalance was a major modelling challenge and required resampling strategies.

## Tools and Libraries

- R
- RStudio
- caret
- randomForest
- pROC
- ROSE
- smotefamily
- ggplot2
- dplyr
- tidyr
- corrplot
- class
- kknn
- glmnet
- car
- readr
- leaps
- knitr / R Markdown

## Repository Structure

```text
.
├── 01_data_preparation.Rmd
├── 02_binary_random_forest.Rmd
├── 03_knn_model.Rmd
├── 04_logistic_regression.Rmd
├── 05_multiclass_random_forest.Rmd
├── data/
│   └── DriverInvolvement.csv
├── figures/
│   └── actual_vs_predicted_bar.png
├── presentation/
│   └── Crash_Severity_Analysis_Overview_Clean.pdf
├── README.md
├── requirements.txt
├── install_packages.R
└── .gitignore
```

## How to Run

1. Open the R Markdown files in RStudio.
2. Install the required packages using `install_packages.R` or the package list in `requirements.txt`.
3. Run `01_data_preparation.Rmd` first to understand the preprocessing workflow.
4. Run the model files in order:
   - `02_binary_random_forest.Rmd`
   - `03_knn_model.Rmd`
   - `04_logistic_regression.Rmd`
   - `05_multiclass_random_forest.Rmd`

The scripts expect the dataset to be located at:

```text
data/DriverInvolvement.csv
```

## Data Availability

The included dataset appears to be an aggregate Australian crash dataset rather than individual personal records. It is included for reproducibility. If this repository is made public, confirm that the dataset source permits redistribution.

## Cleaning and Privacy Note

This is a cleaned portfolio version of the project. Personal names, team identifiers, generated local R session files, screenshots and unnecessary academic materials have been removed. The original presentation PDF has been replaced with a cleaned version that removes team/member names.
