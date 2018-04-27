#region 

perl annotate_variation.pl -regionanno -build hg38 -out  humanDerived_SNVs -dbtype phastConsElements100way humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype cytoBand humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype wgRna humanDerived_SNVs.anninput humandb/  -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype tfbsConsSites humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype targetScanS humanDerived_SNVs.anninput humandb/  -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype genomicSuperDups humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype dgvMerged humanDerived_SNVs.anninput humandb/ -thread 10  
perl annotate_variation.pl -regionanno -build hg38 -out humanDerived_SNVs -dbtype gwasCatalog humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -dbtype wgEncodeCaltechRnaSeqRawSignalRep1Gm12878CellLongpolyaBb12x75 -out humanDerived_SNVs humanDerived_SNVs.anninput humandb/  -thread 10 
perl annotate_variation.pl -regionanno -dbtype wgEncodeBroadChipSeqPeaksGm12878H3k4me1 -out humanDerived_SNVs humanDerived_SNVs.anninput humandb/ -thread 10 
perl annotate_variation.pl -regionanno -dbtype wgEncodeRegDnaseClustered humanDerived_SNVs.anninput humandb/  -out humanDerived_SNVs -thread 10 

#gene
perl annotate_variation.pl -out ex1 --geneanno -dbtype refGene -build hg38 example/ex1.avinput humandb/ -thread 10 
perl annotate_variation.pl example/ex1.avinput humandb/ -aamatrixfile grantham.matrix -out ex1 -buildver hg38 -thread 10 
perl annotate_variation.pl -out ex1 -build hg38 -hgvs example/ex1.avinput humandb/ -thread 10 
perl annotate_variation.pl -out ex1 -build hg38 example/ex1.avinput humandb/ -dbtype knownGene -thread 10 
perl annotate_variation.pl -out ex1 -build hg38 ex1.hg38.avinput humandb/ -dbtype ensGene -thread 10 
perl annotate_variation.pl -downdb wgEncodeGencodeBasicV26 tempdir -build hg38 -thread 10 
perl annotate_variation.pl -build hg38 -out ex1 -dbtype wgEncodeGencodeBasicV19 example/ex1.avinput humandb/ -thread 10 

#filter

perl annotate_variation.pl -filter -dbtype 1000g2012apr_eur -buildver hg38 -out ex1 example/ex1.avinput humandb/ -thread 10 
perl annotate_variation.pl ex1.avinput humandb/ -filter -build hg38 -dbtype avsnp142 -thread 10 
perl table_annovar.pl ex1.avinput humandb/ -protocol dbnsfp30a -operation f -build hg38 -nastring . -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_sift -buildver hg38 -out ex1 example/ex1.avinput humandb/  -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_pp2hvar -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_mt -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_ma -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_lrt -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_fathmm -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_metasvm -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_metalr -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_gerp++ -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_phylop -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype ljb23_siphy -buildver hg38 -out ex1 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl -filter -dbtype esp6500siv2_all -build hg38 -out ex1 example/ex1.avinput humandb/ -thread 10 
perl annotate_variation.pl -filter -dbtype esp6500si_ea -build hg38 -out ex1 example/ex1.avinput humandb/  -thread 10 
perl annotate_variation.pl -filter -build hg38 -dbtype exac03 example/ex1.avinput humandb/ -otherinfo -thread 10 
perl annotate_variation.pl 84060.avinput humandb/ -dbtype gerp++gt2 -build hg38 -filter -thread 10 
perl annotate_variation.pl -filter -out ex1 -dbtype popfreq_max_20150413 -build hg38 example/ex1.avinput humandb/ -thread 10 
perl annotate_variation.pl example/ex1.avinput humandb/ -filter -dbtype clinvar_20140211 -buildver hg38 -out ex1 -thread 10 
perl annotate_variation.pl example/ex1.avinput humandb/ -filter -dbtype cadd -buildver hg38 -out ex1 -thread 10 
perl annotate_variation.pl -filter ex1.avinput humandb/ -dbtype eigen -build hg38 -thread 10 





