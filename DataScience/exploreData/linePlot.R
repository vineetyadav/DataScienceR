# TODO: Add comment
# 
# Author: bigdata
###############################################################################
x <-runif(100)
#First, genrate the data for this example. The x variable is uniformly randomly distributed between 0 and 1
y <-x^2+0.2*x
# The y variable is quadratic function is x 
ggplot(data.frame(x=x,y=y),aes(x=x,y=y))+goem_line()
#plot the line plot
