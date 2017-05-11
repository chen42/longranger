## combine all the fasta files into one 
## these _random contains all the _random pieces from the same chr

rm rn6_condensed.fa
for i in chr1 chr10 chr10_random chr11 chr11_random chr12 chr12_random chr13 chr13_random chr14 chr14_random chr15 chr15_random chr16 chr16_random chr17 chr17_random chr18 chr18_random chr19 chr19_random chr1_random chr2 chr20 chr20_random chr2_random chr3 chr3_random chr4 chr4_random chr5 chr5_random chr6 chr6_random chr7 chr7_random chr8 chr8_random chr9 chr9_random chrM chrUn_random chrX chrX_random chrY chrY_random


do 
echo ">$i" >> rn6_condensed.fa
cat $i >>rn6_condensed.fa
done

