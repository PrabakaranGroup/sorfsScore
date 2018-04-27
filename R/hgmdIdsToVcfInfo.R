#@author narumeena
#@get mutation by using hgmd id 

#library loading 
library(dplyr)
library(vcfR)

#setpath
setwd("/Users/naru/Documents/Cambridge/s-ORFc/")
#install.packages("vcfR")
#hgmd ids 
hgmdIds <- read.csv("data/HGMDAnnotation/hgmd_sorf_mutation.txt", sep = "\t", header = T)

head(hgmdIds)

#hgmd vcf 
hgmdVcf <- read.csv("/Users/naru/Documents/Cambridge/HGMD/HGMD_PRO_2016.4_hg38.vcf",skip = 13,header = T,sep = "\t")

head(hgmdVcf)

hgmdIds$ID

#filtred hgmd mutations 
filtredVcf <- hgmdVcf %>% filter(ID %in% hgmdIds$ID)

head(filtredVcf) 
#write as vcf file 
write.table(filtredVcf, file="data/HGMDAnnotation/hgmd_sorf_filtred.tsv")
