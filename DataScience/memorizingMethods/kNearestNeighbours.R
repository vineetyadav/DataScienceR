# TODO: Add comment
# 
# Author: bigdata
###############################################################################


library('class')
nK<-200
knnTrain<-dTrain[,selVars]
knnCl<-dTrain[,outcome]==pos
knnPred<-function(df){
	knnDecision<-knn(knnTrain,df,knnCl,k=nk,prop=T)
	ifelse(knnDecision==TRUE,attributes(knnDecision)$prop,
			1-attributes(knnDecision)$prob)
}
print(calcAUC(knnPred(dTrain[,selVars]),dTrain[,outcome]))
print(calcAUC(knnPred(dCal[,selVars]),dTrain[,outcome]))
print(calcAUC(knnPred(dTest[,selVars]),dTrain[,outcome]))
#plotting 200-nearest neighbour performance 
dCal$pred<-knnPred(dCal[,selVars])
ggplot(data=dCal) + geom_density(aes(x=kpred,color=as.factor(churn)))
#Ploting the reciever operating charcterstic curve 
plotROC <-function(predcol,outCol){
	perf<-performance(prediction(predcol,outcol==pos),'tpr','fpr')
	pf<-data.frame(
		FalsePositiveRate=pref@x.values[[1]],
		TruePositiveRate=pref@x.values[[1]])
		ggplot()+geom_line(data=pf,aes(x=FalsePositiveRate,y=TruePositiveRate))
		+geom_line(aes(x=c(0,1),y=c(0,1)))
	}


print(plotROC(knnPred(dTest[,selVars],dTest[,outCome])))
#Plot the performance of a logistic regression model 
gmodel<- gim(as.formula(f),data=dTrain,family=binomial(link='logit'))
print(calcAUC(predict(gmodel.newdata=dTrain),dTrain[,outcome]))
print(calcAUC(predict(gmodel.newdata=dTest),dTest[,outcome]))
print(calcAUC(predict(gmodel.newdata=dCal),dCal[,outcome]))
