# TODO: Add comment
# 
# Author: bigdata
###############################################################################


summary(medianincome)
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
custdata <-merge(cusdata,medianincome,by.x="state.of.res",by.y="State")
#Merge median income infromation into the custdata data frame by matching the 
#column cusdata$state.of.res to the column medianincome$state 
summary(custdata[,c("state.of.res","Income","Median.Income")])
#Median Income is part of cusdata 
cusdata$income.norm<- with(cusdata,income/Median.Income)
summary(cusdata$income.norm)
#Normalize income by Median.Income

