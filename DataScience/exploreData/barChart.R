# TODO: Add comment
# 
# Author: bigdata
###############################################################################


library(ggplot)
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
ggplot(cusdata)+geom_bar(aes(x=state.of.res),fill="gray")+
cord_flip()+theme(axis.y=element_text(size=rel(0.8)))
