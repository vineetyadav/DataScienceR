# TODO: Add comment
# 
# Author: bigdata
###############################################################################

#The scales package brings in dollor scale notation. 
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
#Set the x-axis labels in dollars
ggplot(cusdata)+geom_density(aes(x=income))+scales_x_continous(labels=dollor)