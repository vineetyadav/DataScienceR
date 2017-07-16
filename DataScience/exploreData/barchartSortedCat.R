# TODO: Add comment
# 
# Author: bigdata
###############################################################################


statesums <-table(cusdata$state,of.res)
#The table commands agreegates data by state of residence-exactly the information the bar chart plots 
stateref <-as.data.frame(statesums)
#convert the table object to a data frame using as data.frame. The default column names are var1 an freq. 
colnames(stateref) <-c("state.of.res","count")
summary(stateref)
# notice that the default ordering for the state.of.res variable is alphabatical. 
