# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata$income.lt.20K<-cusdata$income<20000
summary(cusdata$income.lt.20K)
