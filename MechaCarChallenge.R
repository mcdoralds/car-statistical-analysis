library(dplyr)

# 1. Linear Regression to predict MPG

# read CSV file into a dataframe
mechacar_df <- read.csv(file='../resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# multiple linear regression
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_df)

# p-value and r-squared
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_df))

# ----

# 2. Supension Coil Lot Analysis
# read CSV file into a dataframe
suspension_coil_df <- read.csv(file = '../resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# create a summary dataframe
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

# create summaries for each lot
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# T-tests on suspension coils
t.test(suspension_coil_df$PSI, mu=1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)