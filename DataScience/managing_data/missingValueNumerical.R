# TODO: Add comment
# 
# Author: bigdata
###############################################################################

cusdata <-read.table('custdata.tsv',header=T,sep='\t')
summary(cusdata$Income)
meanIncome<-mean(cusdata$Income,na.rm=T)
#Don't forget na.rm=T. Otherwise mean() function will include the NAs by default, and meanIncome will be NA. 
Income.fix <-ifelse(is.na(cusdata$Income,meanIncome,cusdata$Income))
summary(Income.fix)