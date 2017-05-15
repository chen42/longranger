# longranger

## Generating the reference index

Rn6 has over 900  _random files.  Longranger supports up to 500 contigs. The ./print_rn6_fasta.pl and ./combine_rn6_chr.sh scripts generates a rn6_condensed.fa  that puts all the _random.fa contigs from the same chr into one contig. They are separated by 600Ns as suggested by 10x Genomics. 


Longranger works on clusters but it is not one of those programs that you just do qsub and let it run. It actually handels job submission and optimzes the number of jobs and resources it needs based on the task. So you'll need to setup templates. It is much optimized on SGE but it works on Torque too.   





