#@author narumeena
#@get mutation by using cosmic coding id

#setpath
setwd("/Users/naru/Documents/Cambridge/s-ORFc/")

#cosmic mutation ids mapped to sorfs 
cosmicCoding <- read.csv("data/cosmicAnnotation/sorfs/coding/sorf_coding_inner_join.csv")

head(cosmicCoding$ID)

#cosmic coding vcf file 
CosmicCodingVcf  <- read.csv("/Users/naru/Documents/Cambridge/Cosmic/coding/CosmicCodingMuts.vcf-14-12-17-SP",skip = 13,header = T,sep = "\t")
head(CosmicCodingVcf)

#filtred the vcf 
filtredVcf<- CosmicCodingVcf %>% filter(ID %in% cosmicCoding$ID)

#write as vcf file 
write.table(filtredVcf, file="data/cosmicAnnotation/sorfs/coding/cosmicCodingSorfs.tsv")
