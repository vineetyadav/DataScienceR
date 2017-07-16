# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
#Facet the graph by housing.type. The scales="free_y" arugumnet specifies that each facet has an 
#idependently scaled y-axis(the default is that all facet have the same scales on both axis). The argument 
#free_x would free the x-axis scaling, and the argument free frees both axis. 
ggplot(cusdata2) + geom_bar(aes(x=martial.stat),position="dodge",fill="gray")+
		facet_wrap(-housing.type,scales="five_y")+
		theme(axis.test.x=element_text(single=45,hjust=1))
#As of this writing, facet_wrap is incompitable wth coord_flip, so we have to tilt the x-axis labels. 

