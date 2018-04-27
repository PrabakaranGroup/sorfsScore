#@author narumeena
#@get mutation by using cosmic noncoding id

#setpath
setwd("/Users/naru/Documents/Cambridge/s-ORFc/")

#cosmic mutation ids mapped to sorfs 
cosmicNonCoding <- read.csv("data/cosmicAnnotation/sorfs/noncoding/sorfs_to_noncoding_mapping.csv",header = F)

head(cosmicNonCoding$V11)

#cosmic coding vcf file 
CosmicCodingVcf  <- read.csv("/Users/naru/Documents/Cambridge/Cosmic/noncoding/CosmicNCV.tsv",skip = 13,header = F,sep = "\t")
head(CosmicCodingVcf)

#filtred the vcf 
filtredVcf<- CosmicCodingVcf %>% filter(V12 %in% cosmicNonCoding$V11)


#write as vcf file 
write.table(filtredVcf, file="data/cosmicAnnotation/sorfs/noncoding/osmicNonCodingSorfs.tsv")
