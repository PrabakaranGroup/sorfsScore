#@author narumeena
#@description corralation matrix of CADD v1.3 traning dataset 


setwd("/Users/naru/Documents/Cambridge/s-ORFc/data/CADD/v1.3")

# load library 
require(readr)


#read traning dataset for CADD v1.3 
traningData <- read.csv("train.csv",header = T)


#calculating corralation 

cor = apply(df, MARGIN = 1, FUN = function(x) return(cor.test(traningData, traningData)$estimate))

write.csv(cor,file="correlation.csv")