# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
#only consider a subset of data with resonable age and income values 
cor(cusdata2$age, cusdata2$income)

