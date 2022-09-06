# Car Analysis using R Statistics

## Linear Regression to Predict MPG
We've been tasked with answering the following questions:
- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
- Is the slope of the linear model considered to be zero? Why or why not?
- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

In order to answer these questions, we conducted a multiple linear regression on all 6 of the variables in the MechaCar_mpg dataset:
- `vehicle_length`
- `vehicle_weight`
- `spoiler_angel`
- `ground_clearance`
- `AWD` (boolean)
- `mpg`

Doing so yielded the following results:

![image](https://user-images.githubusercontent.com/31219195/188522932-df2e59fc-54c0-424d-bbfb-4d34293e0c53.png)

1. The variables that show a non-random effect on the MPG are the the **Vehicle Length** and **Ground Clearance** of the MechaCar. The linear regression model run on these variables against the MPG resulted in p-values of 2.60x10^(-12) `vehicle_length` and 5.21x10^(-8) `ground_clearance`. Based on the intercept, there are likely other elements of the MechaCar not shown in our dataset that also have a strong impact on the MPG.

2. The slope of the linear model has a p-value of 5.35x10(^-11) and therefore not a zero slope. In other words, the relationship between the variables are statistically correlated to the MPG. We therefore reject the null hypothesis.

3. The r-squared is 0.7149 and the adjusted r-squared is 0.6825, meaning the model is less than 75% accurate. The model is only moderately effective in predicting MPG.

## Summary Statistics on Suspension Coils
The purpose of creating a summary statistics table for the suspension coil dataset is to see the following:
- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

**Summary Statistics of Suspension Coil dataset**

![image](https://user-images.githubusercontent.com/31219195/188523977-85277c98-9255-447d-8505-cfdc6607eca1.png)

**Summary for each lot**

![image](https://user-images.githubusercontent.com/31219195/188524053-58aa713c-6827-4d59-afe9-9361005c00a2.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total, as shown in the overall summary. However, the lot-by-lot breakdown shows that lot 3's variance exceeds the 100 limit.


## T-Tests on Suspension Coils
We performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

**Overall**

The results of the T-test for the suspension coils across all manufacturing lots indicate that they are not statistically different from the population mean. The p-value is not low enough to reject the null hypothesis.

![image](https://user-images.githubusercontent.com/31219195/188524471-5f87a24f-a1d5-4498-a5cb-db43cadc00d4.png)

**Lot 1**

The results of the T-test for Lot 3 suspension coils indicates they are not statistically different from the population mean. The p-value is not low enough to reject the null hypothesis.

![image](https://user-images.githubusercontent.com/31219195/188524519-35536ff6-cfa5-400b-8b55-8f1771b9242d.png)

**Lot 2**

The results of the T-test for Lot 3 suspension coils indicates they are not statistically different from the population mean. The p-value is not low enough to reject the null hypothesis.

![image](https://user-images.githubusercontent.com/31219195/188524536-3c1c600e-49de-4497-9c11-8b6e5d7206ed.png)


**Lot 3**

The results of the T-test for Lot 3 suspension coils indicates that they are _slightly_ statistically different from the population mean. The p-value is low enough to reject the null hypothesis. Lot 3 should be looked into with further detail or be discarded from the dataset.

![image](https://user-images.githubusercontent.com/31219195/188524553-d5da9735-c797-43cd-9a17-6960c025e99e.png)


## Study Design: MechaCar vs Competition

There are many factors that car buyers take into consideration when shopping for a new vehicle. In order for MechaCar to outperform its competitors, the data needs to show in further detail how MechaCar's attributes make it the best car in the market.

- **Metrics tested:** Carrying capacity, Acceleration, Battery Life
- **Hypotheses**
  - H0: MechaCar's average carrying capacity, acceleration, and battery life are all similar to competitors'
  - MechaCar's average carrying capacity, acceleration, and battery life contribute to overall better MPG and a better vehicle overall.

- **Methods:** Two-sample t-tests

- **Data needed:** Gather cubic space, acceleration speed, and battery life data from the carrying compartments of all MechaCar prototypes, as well as from all major competitor vehicles.
