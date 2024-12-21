#!/bin/bash
SEED=73308559
#SEED=83638859
#SEED=63381133
#SEED=61451749
#SEED=88666223
#SEED=45755797
#SEED=34521869
#SEED=93643757

mkdir $SEED

cd $SEED

../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_netflix4.csv    -s ../data/sigma_netflix4.csv    > netflix4.csv      &
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_netflix8.csv    -s ../data/sigma_netflix8.csv    > netflix8.csv      &
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_netflix16.csv   -s ../data/sigma_netflix16.csv   > netflix16.csv     &
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_netflix32.csv   -s ../data/sigma_netflix32.csv   > netflix32.csv     &

../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_goodreads4.csv  -s ../data/sigma_goodreads4.csv  > goodreads4.csv    & 
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_goodreads8.csv  -s ../data/sigma_goodreads8.csv  > goodreads8.csv    & 
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_goodreads16.csv -s ../data/sigma_goodreads16.csv > goodreads16.csv   &
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_goodreads32.csv -s ../data/sigma_goodreads32.csv > goodreads32.csv   &

../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_jester4.csv     -s ../data/sigma_jester4.csv     > jester4.csv       &  
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_jester8.csv     -s ../data/sigma_jester8.csv     > jester8.csv       &  
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_jester16.csv    -s ../data/sigma_jester16.csv    > jester16.csv      &
../bin/mcts -e $SEED -t 15 -n 25 -m ../data/mu_jester32.csv    -s ../data/sigma_jester32.csv    > jester32.csv      & 
