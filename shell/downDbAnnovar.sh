#region 
perl annotate_variation.pl -build hg38 -downdb phastConsElements100way humandb/
perl annotate_variation.pl -build hg38 -downdb tfbsConsSites humandb/
perl annotate_variation.pl -build hg38 -downdb cytoBand humandb/
perl annotate_variation.pl -build hg38 -downdb wgRna humandb/
perl annotate_variation.pl -build hg38 -downdb targetScanS humandb/
perl annotate_variation.pl -build hg38 -downdb genomicSuperDups humandb/
perl annotate_variation.pl -build hg38 -downdb dgvMerged humandb/
perl annotate_variation.pl -downdb wgEncodeCaltechRnaSeqRawSignalRep1Gm12878CellLongpolyaBb12x75 humandb/
perl annotate_variation.pl -downdb wgEncodeBroadChipSeqPeaksGm12878H3k4me1 humandb/
perl annotate_variation.pl -downdb wgEncodeRegDnaseClustered humandb/
perl annotate_variation.pl -downdb wgEncodeUwDnaseSeqHotspotsRep2Gm12878 humandb/
perl annotate_variation.pl -build hg38 -downdb gwasCatalog humandb/
  
#gene
perl annotate_variation.pl -downdb -buildver hg38 -webfrom annovar refGene humandb/
perl annotate_variation.pl -downdb wgEncodeGencodeBasicV26 tempdir -build hg38
perl annotate_variation.pl -downdb -build hg38 ccdsGene humandb

#filter
perl annotate_variation.pl -downdb -buildver hg38 -webfrom annovar snp142 humandb/
perl annotate_variation.pl -downdb -buildver hg38 -webfrom annovar snp135NonFlagged humandb
perl annotate_variation.pl -downdb -webfrom annovar -buildver hg38 avsnp142 humandb/
perl annotate_variation.pl -downdb -webfrom annovar -buildver hg38 dbnsfp30a humandb/
perl annotate_variation.pl -downdb -webfrom annovar -build hg38 esp6500siv2_all humandb/
perl annotate_variation.pl -downdb -webfrom annovar esp6500siv2_ea humandb/
perl annotate_variation.pl -downdb -webfrom annovar -build hg38 exac03 humandb/
perl annotate_variation.pl -downdb -buildver hg38 -webfrom annovar gerp++gt2 humandb/
perl annotate_variation.pl -downdb -webfrom annovar -build hg38 cg46 humandb/
perl annotate_variation.pl -downdb -webfrom annovar -build hg38 popfreq_max_20150413 humandb/


