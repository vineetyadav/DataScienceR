# TODO: Add comment
# 
# Author: bigdata
###############################################################################

cusdata <-read.table('custdata.tsv',header=T,sep='\t')

cusdata2 <- subset(cusdata,(cusdata$age>0 & cusdata$age<100 & cusdata$age>0))
#Tilt the x-axis labels so they don't overlap. you can also use coord_flip() to rotate the graph,
#as we saw previously. Some prefer cord_flip() because theme layer is complicated to use.  
ggplot(cusdata) + geom_bar(aes(x=housing.type, fill=martial.stat),position="dodge")+
		theme(axis.test.x=element_text(angle=45,hjust=1))

