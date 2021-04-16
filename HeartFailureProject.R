# The Cool Data Scientists
# Heart Disease Dataset
# Members: Sneha Jaikumar

install.packages("tidyverse")
library(tidyverse)
library(readr)

heartFailure <- read_csv("heart_failure_clinical_records_dataset.csv")
typeof(heartFailure)
names(heartFailure)

plot(serum_creatinine~smoking, data = heartFailure)
plot(ejection_fraction~smoking, data = heartFailure)
plot(creatinine_phosphokinase~high_blood_pressure, data = heartFailure)
plot(creatinine_phosphokinase~DEATH_EVENT, data = heartFailure)

