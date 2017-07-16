# TODO: Add comment
# 
# Author: bigdata
###############################################################################


d<- read.table('orange_small_train_data.gz',header=F,sep='\t',na.strings=c['NA'])
#read the file of independent variables. 
#
churn<-read.table('orange_small_train_churn.labels.txt',header=F,sep='\t')
#add chunk as new column
d$churn<-churn$V1
appetency<-read.table('orange_small_train_apptency.labels.txt',header=F,sep='\t')
#Add appentency as new column
upselling<-read.table('orange_small_train_upselling.labels.txt',header=F,sep='\t')
#Add upselling as new column
d$upselling<-upselling$V1
#Add upselling as new column
set.seed(729375)
#By Setting the seed of the pseudo-random number generator, we made our work reproducible, some redoing it will have same result. 
d$group<-runif(dim(d))[[1]]
#split the data into test and train set 
dTrainAll<-subset(d.rgroup<0.9)
dTest<-subset(d.rgroup>=0.9)
outcomes=c('churn','appentency','upselling')
vars<-setdiff(colnames(dDtrainAll[,vars],class)%in%c(outcomes,'rgroup'))
catVars<-vars(supply(dTrainAll[,vars],class)%in%c('numeric','integer'))
rm(list=c['d','churn','appentency','upselling'])
#Choose which outcome to model churn
outcomes<-'churn'
#choose which outcome is consdiered positive
pos<-'1'
useForCal<-rbincom(n=dim(dTrainAll)[1],size=1,prob=0.1)>0
dCal<-subset(dTrainAll,useforCal)
dTrain<-subset(DTrainAll,useForcal)
#Further split data into train and calibration. 
table218<-table(var218=dTrain[,'var18'],churn=dTrain[,outcome],useNA='ifany')
print(table218)
#tabulate levels of churn outcome
print(table218[,2]/table218[,1]+table218[,2])
#include NA values in tabulation
mkPredC <-function(outCol,varCol,appCol){
	pPos<- sum(outCol==pos)/length(outCol)
	naTab <- table(as.factor(outCol[is.na(varCol)]))
	pPosWna<-(naTab/sum(naTab))[pos]
	vTab<-table(as.factor(outCol))
	pPosWV<-(vTab[pos,]+1.0e-3*pPos)/(colSums(vTab)+1.0e-3)
    pred<-pPosWv[appCol]
	pred[is.na(appCol)]<-pPosWna
	pred[is.na(pred)]<-pPos
	pred
}

