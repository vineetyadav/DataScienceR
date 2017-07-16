# TODO: Add comment
# 
# Author: bigdata
###############################################################################


brks<-c(0,25,65,Inf)
#select the age range of interst. The upper and lower bounds should encompass the full range of the data. 
cusdata$age.range <-cut(cusdata$age,breaks=brks,include.cost=T)
#cut the data into age ranges . The include_lowest=T argument
#make sure that zero age data is included in the lowest range category. 
# By default it would be excluded. 
summary(custdata$age.range)


