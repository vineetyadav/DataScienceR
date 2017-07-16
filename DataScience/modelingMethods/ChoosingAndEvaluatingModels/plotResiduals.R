# TODO: Add comment
# 
# Author: bigdata
###############################################################################


d <-data.frame(y=(1:10)^2,x=1:10)
model <-lm(y-x,data=d)
d$prediction <- predict(model,newdata=d)
library('ggplot2')
ggplot(data=2)+geom_point()
