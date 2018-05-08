#region 



perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out  /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype phastConsElements100way /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype cytoBand /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype wgRna /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/  -thread 10 
#perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype tfbsConsSites /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 

perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype genomicSuperDups /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype dgvMerged /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10  
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -build hg38 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -dbtype gwasCatalog /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -dbtype wgEncodeCaltechRnaSeqRawSignalRep1Gm12878CellLongpolyaBb12x75 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/  -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -dbtype wgEncodeBroadChipSeqPeaksGm12878H3k4me1 -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/ -thread 10 
perl /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/annotate_variation.pl -regionanno -dbtype wgEncodeRegDnaseClustered /mnt/workspace/prabakaranLab/sorfcScore/data/variantMapToSorfs/hgmd/hgmd_sorf_mutation.avinput /mnt/workspace/prabakaranLab/sorfcScore/software/annovar/humandb/  -out /mnt/workspace/prabakaranLab/sorfcScore/data/annotation/region/hgmd/hgmd_region -thread 10 







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





