#!/bin/bash

# TODO: make sure you have set up dn.txt with your DataNode hostnames, 1 per line
set -e

cat dn.txt | while read h
do
  rsync -ra $HOME/tpcds-kit $h:$HOME
  rsync -ra $HOME/impala-tpcds-kit $h:$HOME
done
