library(scales)
library(ggplot2)
cusdata <-read.table('custdata.tsv',header=T,sep='\t')
ggplot(cusdata) + geom_density(aes(x=income))
+scale_x_continous(labels=dollor)