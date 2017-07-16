# TODO: Add comment
# 
# Author: bigdata
###############################################################################


missingIncome<- is.na(custdata$Income)
Income.fix <- ifelse(is.na(custdata$Income,0,custdata$Income))
# The missing income varibles let you differentite the two kinds of zeros in the data: the ones that you are 
#add, and one that were already there. 
missingIncome <- is.na(custdata$Income)
summary(Income.fix)
