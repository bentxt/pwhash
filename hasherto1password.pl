# run: perl -san   gen.pl -salt=mysalt  domains.txt
BEGIN{
    chomp $salt;
    unless($salt){ die "no salt" };

    print "title\tusername\tpassword\tURL\n"
}
unless($. == 1 ){
#chomp $_;
$pw = qx(/usr/local/bin/node ./cli_passhash.js $salt $F[0] 20);

chomp $F[0];
chomp $F[1];
chomp $F[2];
chomp $pw;

print "$F[0]\t$F[1]\t$pw\t$F[2]\n";
}
# call perl -sne ./gen.pl domains.txt -- -salt=mysalt
