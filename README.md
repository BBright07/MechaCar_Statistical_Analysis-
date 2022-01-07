# MechaCar_Statistical_Analysis-
## Overview
A special project was shared with Jeremy.
"AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team."
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition
Files

## Deliverables
### Linear Regression to Predict MPG 
- The r-squared and p-value metrics provided a non-random amount of variance to the mpg values in the dataset.
- The p-value of "5.35e-11" is much smaller than the significance level of 0.05% which means we can reject the null hypothesis, and consequently the slope is not zero. 
- Given that the adjusted r-squared is 0.68  there is somewhat a significant correlation that is above average and can be a good indicator that mpg is s good predictor of MechaCar prototypes.

### Summary Statistics on Suspension Coil
#### Total Summary

#### Lot Summary
Although lot 1 and 3 meet the variance requirement of 100 pounds per square inch, lot 3 fails to meet the requirement at over 70 pounds above the limit.