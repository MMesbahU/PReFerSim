$FrequencyDown = $ARGV[0];
$FrequencyUp =  $ARGV[1];
$File = $ARGV[2];
$ExitFile = $ARGV[3];
open (FILE,$File) or die "NO!";
open (EXIT,">$ExitFile") or die "NO!";

while(<FILE>){
chomp;
$Line = $_;
@SplitLine = split(/\s+/,$Line);

if ( ( $SplitLine[1] >= $FrequencyDown ) && ( $SplitLine[1] <= $FrequencyUp ) ){
#print "$SplitLine[2]\n";
print EXIT "$SplitLine[4]";
print EXIT "\n";
}
}
close(FILE);
close(EXIT);
