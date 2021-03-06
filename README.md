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
![alt text](https://github.com/BBright07/MechaCar_Statistical_Analysis-/blob/main/images/total_summary.jpg)
The overall variance is well below the limit set to 100 pounds, which is a positive result. The mean and the median are also quite close in value (mean: 1498.78, median: 1500) which hints at the fact that this is more or less a symmetrical distribution or a normal distribution. 

#### Lot Summary
![alt text](https://github.com/BBright07/MechaCar_Statistical_Analysis-/blob/main/images/lot_summary.jpg)
Although 'lot 1' and 'lot 2' meet the variance requirement by being below 100 pounds per square inch, lot 3 fails to meet the requirement at over 70 pounds above the limit.

### T-Tests on Suspension Coils
#### T-test on each in all lots 
Results:
- One Sample t-test
- data:  susCoil$PSI
- t = -1.8931, df = 149, p-value = 0.06028
- alternative hypothesis: true mean is not equal to 1500
- 95 percent confidence interval:
- - 1497.507 1500.053
- sample estimates:
- mean of x : 1498.78 

- Interpretation: with a common significance level of 0.05 this p-value is slightly above which leads to the conclusion that the means do not have a significant difference. Additionally, the two means are statistically similar. 

#### T-test for each lots
Results:

- One Sample t-test
- data:  lot1$PSI
- t = 0, df = 49, p-value = 1
- alternative hypothesis: true mean is not equal to 1500
- 95 percent confidence interval:
- - 1499.719 1500.281
- sample estimates:
- mean of x 1500 

Lot 1 mean is practically the same as the population mean with p at 1.

- One Sample t-test
- data:  lot2$PSI
- t = 0.51745, df = 49, p-value = 0.6072
- alternative hypothesis: true mean is not equal to 1500
- 95 percent confidence interval:
- - 1499.423 1500.977
- sample estimates:
- mean of x 1500.2 

Lot 2 is also close in value to the pop mean at 0.6 p-value with less significance than lot 1.


- One Sample t-test
- data:  lot3$PSI
- t = -2.0916, df = 49, p-value = 0.04168
- alternative hypothesis: true mean is not equal to 1500
- 95 percent confidence interval:
- - 1492.431 1499.849
- sample estimates:
- mean of x 1496.14 

Lot 3 leads to a rejection of the null hypothesis and relative significant difference in means with a p-value < 0.05

### Study Design: MechaCar vs Competition
An additional study on mpg (miles per gallon) would be really helpful to evaluate vehicles' fuel efficiency to beat competition. Using ANOVA on miles per gallon of energy efficient cars from various manufacturers and our own, we will test whether our cars' mpgs are similar to other energy efficient cars or not and this information will inform measures to invest in research and development for more fuel efficient cars immediately or to delay R&D for the future in case our cars are more efficient that other cars. Using a significance level of 0.05, the null hypothesis will be "whether sample means differences are significant". Thus, data from competitors' mpgs would be valuable in this experiment.
