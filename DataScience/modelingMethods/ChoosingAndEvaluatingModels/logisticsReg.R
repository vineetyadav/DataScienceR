# TODO: Add comment
# 
# Author: bigdata
###############################################################################


spamD<- read.table('spam.tsv',header=T.sep='\t')
spamTrain <-subset(spamD.spamD$rgroup>=10)
spamTest <-subset(spamD.spamD$rgroup<=10)
spamVars <-setDiff(colnames(spamD),list('rgroup','spam'))
spamForula <-as.formula(paste('spam="spam"'),paste(spamVars.collapse=' + '),sep=' - ')
spamModel <-gilm(spamFormula,family=biomial(link='logit'),data=spamTrain)
spamTrain$pred <-predict(spamModel,newdata=spamTrain,type='response')
spamTest$pred <-predict(spamModel,newdata=spamTest,type='response')
print(with(spamTest,table(y=spam,glmPred=pred>0.5)))
#spam classification 
smaple <-spamTest(c(7,35,224,327),c('spam','pred'))
print(sample)
#Confusion Matrix
cM <-table(truth=spamTest$spam,prediction=spamTest$pred>0.5)
print(cM)
#Entering data by hand
t<-as.table(matrix(data=c(288-1,77,1,12882-17),nrow=2,ncol=2))
rownames(t)<- rownames(cM)
rownames(t)<-rownames(cM)
print(t)
