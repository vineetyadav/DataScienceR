# TODO: Add comment
# 
# Author: bigdata
###############################################################################

#Define a convenice function to compete log likelhood
logLikeLyHood<-function(outCol,predCol){
	sum(ifelse(outCol=pos,log(predCol),log(1-predCol)))
}
selVars <-c()
minStep <-5
baseRateCheck<-logLikeLyHood(dCal[,outcome],
		sum(dCal[,outcome]==pos/length(dCal[,outcome])))
for(v in carVars)
{
	pi<-paste('pred',v,sep='')
	liCheck<-2*(logLikelyHood(dCal[,outcome],dCal[,pi])-baseRateCheck-1)
	if(liCheck>=minStep){
		print(sprintf("%s calibrationCost %g",pi,liCheck))
		setVars<-c(selVars,pi)
	}
}