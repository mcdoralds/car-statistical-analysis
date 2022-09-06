library(dplyr)

# read CSV file into a dataframe
mechacar_df <- read.csv(file='../resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# 1. Linear Regression to predict MPG
# multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_df)

# p-value and r-squared
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_df))

