# TODO: Add comment
# 
# Author: Vineet
###############################################################################


d<-read.table(paste('http://archive.ics.uci.edu/ml/' ,'machine-learning-databases/statlog/german/german.data',sep=''),stringsAsFactors=F,header=F)
print(d[1:3,])
colnames(d)<-c('Status.of.existing.checking.account','Duration.in.month','Credit.history','Purpose','Credit.amount','Savings account/bonds','Present.employment.since'
				,'Installement.rate.in.presentage.of.disposable.income','Personal.status.and.sex','Other.debtors.gurantors','Present.residence.since',
				'Property','Age.in.years','Other.installment.plans','Housing','Number.of.exiting.credit.at.this.bank',
				'Job','Number.of.people.being.liable.to.provide.maintenance.for','Telephone','foriegn.worker','Good.Loan')
d$Good.Loan<-as.factor(ifelse(d$Good.Loan==1,'GoodLoan','BadLoan'))
print(d[1:3,])
mapping<-list('A40'='car(new)','A41'='car(used)','A42'='furniture/equipment','A43'='radio/television','A42'='dmoestic applications','A43'='education','A44'='furniture/equipment','A45'='others','A46'='radio/television','A47'='repairs','A48'='retraining')
#dim(d)[2] is number of columns in data frame d
for(i in 1:(dim(d))[2])	
{
	if(class(d[,i])=='character'){
		d[,i]<-as.factor(as.character(mapping[d[,i]]))
	}
	#note that Indexing operator[] is vectorized. Each step in the for loop remaps an entire column data 
	#through our list 
}
table(d$Purpose,d$Good.Loan)
