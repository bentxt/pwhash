#!/bin/sh

#echo "Salt/masterpass"
#read -s SALT
perl -san   hasherto1password.pl -masterpw=$1 $2 
