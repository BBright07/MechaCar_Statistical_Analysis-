#Deliverable 1
#load to dplyr package
library(dplyr)

#Create MechaCar dataframe
mechaCarMpg <- read.csv(file='data/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Create linear regression model lm
?lm()
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCarMpg))


##Deliverabe 2
#Create Suspension coil dataframe
susCoil <- read.csv(file='data/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Create total_summary of PSI column mean, median, variance and SD
total_summary <- susCoil %>% summarize(Mean=mean(PSI),
                                          Median=median(PSI),
                                          Variance=var(PSI),
                                          SD=sd(PSI),.groups = 'keep') 

#create lot_summary grouping by lot and getting summary stats
lot_summary <- susCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                     Median=median(PSI),
                                                                     Variance=var(PSI),
                                                                     SD=sd(PSI),.groups = 'keep')

##Deliverable 3
#t.test all manufacturing lots stats. similar to pop mean of 1500 pounds per quare inch
?t.test()
t.test(susCoil$PSI,mu=1500)

#2. Use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI

lot1 <- subset(susCoil, Manufacturing_Lot=="Lot1")
lot2 <- subset(susCoil, Manufacturing_Lot=="Lot2")
lot3 <- subset(susCoil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
## code help https://github.com/emmanuelmartinezs/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.RScript

