#!/usr/bin/perl

# LOL 4 Team Generator
# By @ALEJANDROJ19 -- https://twitter.com/ALEJANDROJ19YT

sub print_teams {
	# Print: Name:	TEAM_NAME!
	#		1-Top: \n
	#		2-Jungl....

	print "Team Name:\t$_[0]\n";
	print "\t1-Top:\t\t$_[1]";
	print "\t2-Jungl:\t$_[2]";
	print "\t3-Mid:\t\t$_[3]";
	print "\t4-Adc:\t\t$_[4]";
	print "\t5-Supp:\t\t$_[5]";
	print "\n\n";

}

$path_file="./campeones.txt";
%chplist;
$num=19;

$team1_name = "Sugoi Team";
$team2_name = "Sugus Team";
$team3_name = "Sandia Team";
$team4_name = "Patata Team";

open(FILE, $path_file) or die "File not found";
@champs= <FILE>; 
close FILE;

while( $num ge 0 ){
	# While champs avariable and not selected:
	$tmpch = @champs[int(rand(@champs))];
	
	if ( not exists $chplist{$tmpch} ){
		$chplist{$tmpch} = (19-$num);
		$num -= 1;
	}
}

@keys = keys %chplist;

@team1 = ($keys[0], $keys[1], $keys[2], $keys[3], $keys[4]);
@team2 = ($keys[5], $keys[6], $keys[7], $keys[8], $keys[9]);
@team3 = ($keys[10], $keys[11], $keys[12], $keys[13], $keys[14]);
@team4 = ($keys[15], $keys[16], $keys[17], $keys[18], $keys[19]);

# Print all the teams!

&print_teams ($team1_name, @team1 );
&print_teams ($team2_name, @team2 );
&print_teams ($team3_name, @team3 );
&print_teams ($team4_name, @team4 );


