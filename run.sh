#!/bin/sh

#echo "Salt/masterpass"
#read -s SALT
perl -san   hasherto1password.pl -salt=$1 $2 
