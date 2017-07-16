# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
ggplot(cusdata2, aes(x=age,y=income)) + goem_point()+stat_month(method="1m") + ylim(0,20000)
