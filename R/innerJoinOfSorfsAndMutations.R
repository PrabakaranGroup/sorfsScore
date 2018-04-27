#@author narumeena 
#@description inner join implementation 


setwd("/Users/naru/Documents/Cambridge/s-ORFc/")

sorfs <- read.csv("human_PLsorf_database.txt",sep = "\t",header = T)

headaltorfs <-sorfs
head(headaltorfs )

humanDrivedMutations <- read.csv("humanDerived_SNVs.vcf", sep = "\t", header = F)
head(humanDrivedMutations)
##don't click on it twice 
humanDrivedMutations$V1 <- paste("chr", humanDrivedMutations$V1, sep="")

headcodingCosmic <- humanDrivedMutations
#combined <- sort(union(levels(headcodingCosmic$X.CHROM), levels(headaltorfs$V10)))
head(headcodingCosmic)
library(dplyr)
#x = mutate(headaltorfs,V10=factor(V10, levels=combined)) %>%
#  inner_join(mutate(headcodingCosmic,X.CHROM=factor(X.CHROM, levels=combined)), by = c("V10" = "X.CHROM")) %>%
#  filter(  V16 <= POS & POS <= V17)

colnames(headcodingCosmic)[1] <- "Chromosome"
head(headcodingCosmic)
y<- inner_join(headaltorfs,headcodingCosmic, by = "Chromosome")  %>% filter(  Start_position <= V2 & V2 <= End_position)

write.csv(y,file="humanDriveSnv_map_to_sorfs.csv")
