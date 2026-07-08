# Install required R packages for the crash severity classification project
packages <- c(
  "caret",
  "randomForest",
  "pROC",
  "ROSE",
  "smotefamily",
  "ggplot2",
  "dplyr",
  "tidyr",
  "corrplot",
  "kknn",
  "glmnet",
  "car",
  "readr",
  "leaps",
  "knitr",
  "rmarkdown"
)

installed <- rownames(installed.packages())
missing <- setdiff(packages, installed)

if (length(missing) > 0) {
  install.packages(missing)
}
