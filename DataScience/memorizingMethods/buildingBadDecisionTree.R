# TODO: Add comment
# 
# Author: bigdata
###############################################################################


libary('rpart')
fV<-paste(outcome,'>0 -',paste(c(catVars,numericVars),collapse=' + '),sep='')
tmodel<-rpart(fV,data=dTrain)
print(calcAUC(predict(tmodel,newdata=dTrain),dTrain[,outcome]))
print(calcAUC(predict(tmodel,newdata=dTest),dTest[,outcome]))
print(calcAUC(predict(tmodel,newdata=dCal,dTest[,outcome])))
print(tmodel)
#Building another bad decision tree
tVars<-paste(outcome,'>0 ~',paste(tVars,collapse=' + '),sep='')
fV2<-paste(outcome,'>0 ~',paste(tVars,collapse=' + '),sep='')
tmodel<-rpart(fV2,data=dTrain)
print(calcAUC(predict(tmodel,newdata=dTrain),dTrain[,outcome]))
print(calcAUC(predict(tmodel,newdata=dTest),dTest[,outcome]))
print(calcAUC(predict(tmodel,newdata=dCal),dCal[,outcome]))
print(tmodel)
#Building yet another bad decision tree
tmodel<-rpart(fV2,data=dTrain,control=rpart.control(cp=0.001,minsplit=1000,
				minbucket=1000,maxdepth=5))
print(calcAUC(predict(tmodel,newdata=dTrain),dTrain[,outcome]))
print(calcAUC(predict(tmodel,newdata=dTest,dTest[,outcome])))
print(calcAUC(predict(tmodel,newdata=dCal,dCal[,outcome])))
print(tmodel)
#Building a better decision tree
f<-paste(outcome,'>0 ~',paste(selVars,collapse=' + '),sep='')
tmodel<-rpart(f,data=dTrain,control=rpart.control(cp=0.001,minsplit=1000,minbucket=1000,maxdepth=5))
print(calcAUC(predict(tmodel,newdata=dTrain),dTrain[,outcome]))
print(calcAUC(predict(tmodel,newdata=dTest),dTest[,outcome]))
print(calcAUC(predict(tmodel,newdata=dCal,dCal[,outcome])))

#print desicison tree
print(tmodel)
#plot the descision tree
par(cex=0.7)
plot(tmodel)
text(tmodel)