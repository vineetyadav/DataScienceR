# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata <-read.table('custdata.tsv',header=T,sep='\t')
#Restrict to the rows where housing.type is NA
summary(custdata(is.na(cusdata$housing.type),c("recent.move","num.vechicles")))
#Look only at the columns recent.move and num.vechicles 
#The output of alls NAs. All the missing data comes from same news. 
