# databootcamp-car-statistical-analysis

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
