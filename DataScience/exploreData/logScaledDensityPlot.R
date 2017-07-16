# TODO: Add comment
# 
# Author: bigdata
###############################################################################

#Set the X-axis to be in log10 scale highlights 
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
ggplot(cusdata)+geom_density(aes(x=income))+scale_x_log10(breaks=c(100,1000,10000,100000),labels=dollor)+annotation_logsticks(sides=bt)
#Add log-scaled ticks marks to the bottom and top of the graph.