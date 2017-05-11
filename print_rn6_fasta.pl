# print each fasta file of rn6 
# combine all _random files for the same chr into one _random file
# These fasta files are then combined into one using a bash script

$rn6="./rn6.fa";
open(R, "$rn6") || die;
while (<R>) {
	if ($_=~/>chr(.+$)/) {
		$out=$1;
		close(O);
		if ($out=~/(.+?)_/) {
			print ">>chr$1\_random\n";
			open (O, ">>chr$1\_random") || die;
			print O "NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN\n";
			next;
		} else {
			print ">>chr$out\n";
			open (O, ">chr$out") || die;
			next;
		}
			
	}
	# make sure each line is 50bp, so that samtools won't bark
	chomp();
	print O $_;
	$len=length($_);
	if ($len<50){
		for ($i=$len; $i<50; $i++) {
			print O "N";
		}
	}
	print O "\n";
	
}
		
