# TODO: Add comment
# 
# Author: bigdata
###############################################################################

library(hexbin)
#load the library
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
#create hexbin with age binned into 5 year increments, income in  increments of 10000
ggplot(cusdata2,aes(x=age,y=income))+geom_hex(binwidth=c(5,1000))+geom_smooth(color="white",se=F)
#Add something curve in white, suppress standard error ribbon(se=F)
+ylim(0,200000)