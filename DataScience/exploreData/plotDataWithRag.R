# TODO: Add comment
# 
# Author: bigdata
###############################################################################

cusdata <-read.table('custdata.tsv',header=T,sep='\t')
#Set the points just under the y-axis, three quaters of default size and make them slightly transparent with apha parameter.
ggplot(cusdata,aes(x=martial.stat))+geom_bar(aes(fill=health.ins),position="fill")
+geom_point(aes(y=0.05),size=0.75,alpha=0.3,position=position_filter(h=0.01))
#jitter the points slightl for legitibility 
