# TODO: Add comment
# 
# Author: bigdata
###############################################################################


library('ROCR')
eval<- predication(spamTest$pred,spamTest$spam)
plot(performance(eval,"tpr","fpr"))
print(attributes(perfromance(eval,'auc'))$y.values())
sum(ifelse(spamTest$spam=='spam',log(spamTest$pred),log(1-spamTest$pred)))
sum(ifelse(spamTest$spam=='spam',log(spamTest$pred)))/dim(spamTest)[[1]]
pNull<- sum(ifelse(spamTest$spam=='spam',1,0))/dim(spamTest)[[1]]
sum(ifelse(spamTest($spam=='spam')))

