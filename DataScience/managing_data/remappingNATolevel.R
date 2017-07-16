# TODO: Add comment
# 
# Author: bigdata
###############################################################################

cusdata <-read.table('custdata.tsv',header=T,sep='\t')
#If is.employed value is missing. 
cusdata$is.employed.fix <-ifelse(is.na(cusdata$is.employed),"missing",ifelse(cusdata$is.employed=T,"employed","not employed"))
#assign the value  Otherwise
#if is.employed ==TRUE, assign the value . 
#The transformation has turned the variable type from factor to string. You can change it back with as.factor() function. 
summary(as.factor(cusdata$is.employed.fix))
cusdata$is.employed.fix <- ifelse(is.na(cusdata$is.employed),"not in active workforce",ifelse(cusdata$is.employed==T,"employed","not employed"))
summary(as.factor(cusdata$is.employed.fix))


