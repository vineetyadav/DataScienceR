# TODO: Add comment
# 
# Author: bigdata
###############################################################################


summary(cusdata$age)
#Take the mean
# take the standard deviation 
meanage<-mean(cusdata$age)
stdage<-sd(cusdata$age)
meanage
stage
#use the mean value as the orign(or the reference point) and rescale the distance from the mean by 
#The standard deviation. 
cusdata$age.normalized <- (cusdata$age-meanage)/stage
summary(cusdata$normalized)