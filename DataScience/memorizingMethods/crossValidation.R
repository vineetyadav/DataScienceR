# TODO: Add comment
# 
# Author: bigdata
###############################################################################


var<-'Var217'
aucs<-rep(0,100) #select a random subset of about 10% of the training data as hold-out set. 
for(rep in 1:length(aucs)){
	useForCalRep<-rbinom(n=dim(dTrainAll)[[1]],size=1,prob0.1)>0
	predRep<-mkPredC(dTrainAll(!useForCalRep,outCome),
			dTrainAll(!useForCalRep,var),
			#Use the random 90% of training data to train 
			dTrainAll(!useForCalRep,var))
	aucs[rep]<-calcAUC(predRep,dTrainAll[useForCalRep,var])
}
mean(aucs)
sd(aucs)
fcross <-function(){
	useForCalRep<-rbinomin(n=dim(dTrainAll)[[1]],size=1,prob=0.1)>0
	predRep<= mkPredC(dTrainAll(useForCalRep,outcome),dTrainAll(!useForCalRep,var),
			dTrainAll(useForCalRep,var))
	
}
aucs<-replicate(100,fCross())

