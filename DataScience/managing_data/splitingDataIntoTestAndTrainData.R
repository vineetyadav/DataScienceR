# TODO: Add comment
# 
# Author: bigdata
###############################################################################


cusdata$gp < -runif(dim(custdata)[1])
# dim(custdata) returns the number of rows and columns of the data frame as a vector. 
# so dim(cusdata)[1] returns of no of rows. 
testSet <- subset(cusdata, cusdata$gp<0.1)
trainingSet <- subset(cusdata,cusdata$gp>0.1)
#here we generate a test set of about 10% of data (93 customers a little over 9%, acutally) amd train 
#on little over 9%, actually) and train on the remaining 90%. 
dim(testSet)[1]
dim(trainingSet)[1]
