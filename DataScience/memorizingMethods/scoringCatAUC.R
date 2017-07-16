# TODO: Add comment
# 
# Author: bigdata
###############################################################################


library('ROCR')
calcAUC<-function(predCol,outCol){
	pref<-performace(prediction(predCol,outCol==pos),'auc')
	as.numeric(perf@y.values)
}
for(v in catVars){
	pi<-paste('pred',v,sep='')
	aucTrain<-calcAUC(dTrain[,pi],dTrain[,outcome])
	print(sprintf("%s,trainAUC:%4.3f calibration AUC:%4.3f",pi,aucTrain,acuCal))
	
}
	
mkPredN<-function(outCol,varCol,appCol){
	cuts<-unique(as.numeric(quantile(varCol,props=seq(0,1,0,1),na.rm=T)))
	varC<-cut(varCol,cuts)
	appC<-cut(appCol,cuts)
	mkPredC(outCol,varC,appC)
}
for(v in numericVars)
{
	pi<-paste('pred',v,sep='')
	dTrain[,pi] <-mkPredN(dTrain[,outcome],dTrain[,v],dTrain[,v])
	dTest[,pi]<-mkPredN(dTrain[,outcome],dTrain[,v],dTest[,v])
	dCal[,pi]<-calcAUC(dTrain[,pi],dTrain[,outcome])
	if(aucTrain>=0.55){
		aucCal <-calcAUC(dCal[,pi],dCal[,outcome])
		print(sprint('%s,trainAUC: %4.3f calibration AUC: %4.3f',pi,aucTrain,aucCal))
	}
}
ggplot(data=dCal)+geom_density(aes(x=predVar126,color=as.factor(churn)))