# TODO: Add comment
# 
# Author: bigdata
###############################################################################

breaks<-c(0,10000,50000,100000,2500000,1000000)
#select some income ranges of interest. To use the cut() function, the upper 
#and lower bounds should encompass the full income range of the data
Income.groups <- cut(cusdata$Income, breaks = breaks, include.lowest=T)
summary(Income.groups)
#The cut function produces factor variables. Note that NAs are preserved. 
Income.groups <-s.character(Income.groups)
#to preserve the category neames before adding a new category, convert the variables to string
Income.groups <- ifelse(is.na(Income.groups),"no Income",Income.groups)
summary(as.factor(Income.groups))
