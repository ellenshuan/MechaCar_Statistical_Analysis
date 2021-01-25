install.packages("dplyr")

MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

?lm()

MPG_lm=lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_table)

summary(MPG_lm) #summarize linear model

library(tidyverse)

Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), variance=var(PSI), sd=sd(PSI))

lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), variance=var(PSI), sd=sd(PSI), .groups = 'keep')

t.test(Suspension_Coil_table$PSI, mu = 1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(Suspension_Coil_table,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)







