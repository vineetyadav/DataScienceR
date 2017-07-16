cusdata <-read.table('custdata.tsv',header=T,sep='\t')
summary(cusdata)
summary(cusdata$income)
#Neg value for income could indicate bad data. They might also have a spl meaning. Like amount of debt.
#Income ranges from zero to over half a million dollors; a wide range.  
summary(cusdata$age)
# customers of age zero, or customers of an age greater than about 110 are outliers. They fall out of 
#the range of expected customer values. 
#Outliners could be data input errors. zero means age unknown and refuse to expected customers values. 
Income<-cusdata$income/1000
summary(Income)
#The variable Income is defined as Income/1000. 