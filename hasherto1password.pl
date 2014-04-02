# run: perl -san   gen.pl -masterpw=mymasterpw  domains.txt
BEGIN{
    chomp $masterpw;
    unless($masterpw){ die "no masterpw" };

    print "title\tusername\tpassword\tURL\n"
}
unless($. == 1 ){
#chomp $_;
$pw = qx(/usr/local/bin/node ./cli_passhash.js $F[0] $masterpw 20);

chomp $F[0];
chomp $F[1];
chomp $F[2];
chomp $pw;

print "$F[0]\t$F[1]\t$pw\t$F[2]\n";
}
# call perl -sne ./gen.pl domains.txt -- -salt=mysalt
