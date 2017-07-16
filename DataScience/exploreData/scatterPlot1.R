# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
ggplot(cusdata2,aes(x=age,y=as.numeric(health.ins))) + geom_point(position=position_jitter(w=0.05,h=0.05))+geom_smooth()
