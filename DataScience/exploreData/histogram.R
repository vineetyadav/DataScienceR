#load GG plot library 
library(ggplot)

cusdata <-read.table('custdata.tsv',header=T,sep='\t')
ggplot(cusdata)+geom_histogram(aes(x=age),binwidth=5,fill=gray)
#The binwidth parameters tells the geom_histogram call how to make bins of five year 
#intervals(default is datarange/30). The fill parameter specifies the color of the histogram 
#bars
