# The Cool Data Scientists
# Heart Disease Dataset
# Members: Sneha Jaikumar

install.packages("tidyverse")
library(tidyverse)
library(readr)

heartFailure <- read_csv("heart_failure_clinical_records_dataset.csv")
typeof(heartFailure)
class(heart_failure)
names(heartFailure)
ncol(heart_failure)
nrow(heart_failure)
length(heart_failure$anaemia)
filtered <- filter(heart_failure, diabetes == 1)
filtered
select(heart_failure, serum_creatinine, high_blood_pressure)
arrange(heart_failure, platelets)


plot(serum_creatinine~smoking, data = heartFailure)
plot(ejection_fraction~smoking, data = heartFailure)
plot(creatinine_phosphokinase~high_blood_pressure, data = heartFailure)
plot(creatinine_phosphokinase~DEATH_EVENT, data = heartFailure)

plot(heart_failure$age, heart_failure$platelets)
model.lm <- lm(platelets~age, data = heart_failure)
plot(model.lm, which = 1:2)
     #Plot of simple linear regression model between the platelets and age variables in the dataset. The Q-Q plot shows the residuals are close to the line of normality, but the first plot shows that many of the residuals are far from zero.
  

