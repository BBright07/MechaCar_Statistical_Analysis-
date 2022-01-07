#Deliverable 1
#load to dplyr package
library(dplyr)

#Create a new RScript in your R
mechaCarMpg <- read.csv(file='data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Create linear regression model lm
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg))


##Deliverabe 2
susCoil <- read.csv(file='data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- susCoil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI),.groups = 'keep') 