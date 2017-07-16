# TODO: Add comment
# 
# Author: bigdata
###############################################################################


hh<- unique(hhdata$household_id)
# Get all unique household IDs from your data frame. 
households <-data.frame(household_id=hh.gp =run)
hhdata <-merge(hhdata,households, by="household_id")
