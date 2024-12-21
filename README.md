# EDDS

The code has been adjusted so that it supports seeding for the pseudo random genertor and outputs results in a csv format for easier usage in python. 
A run.sh script also has been added that runs all experiments for a given seed. 
Eight results have been generated using this script and can be found in folders named according to the seeds (73308559, 83638859, 63381133, 61451749, 88666223, 45755797, 34521869, 93643757) used for generation. The source of the experiments are the files in the data directory which have been kept from the original repository and are generated according to the following paragraph from the paper:

```
Clustering Users. We use training data to cluster users into groups
and estimate the mean µ(д,v) and variance σ(д,v)
2 of the ratings
by each group д for item v. We use the BLC matrix-factorization
clustering algorithm [4] for this, although other clustering algorithms might also be used. We vary the number of groups/clusters
from 4 to 32 and report results for each.
```

These means and sigmas are then used to model new users as multinormal distributions.



The following is from the original repository of the paper and should still work for installing the modified program:

# mcts-rec

## Introduction

The C++ implementation for the publication "Fast And Accurate User Cold-Start Learning Using Monte Carlo Tree Search". The paper can be found [here](https://dl.acm.org/doi/10.1145/3523227.3546786).


### How to set up

Install GNU Scientific Library [(GSL)](https://www.gnu.org/software/gsl/).

Installing `gsl` in macOS
```
brew install gsl
```


### Preprocessed Data

The item distribution data (mean and variance) of the clusters for each dataset can be found [here](https://www.dropbox.com/sh/l0d6rynq7lte40i/AAB9OiUyMcuT_N8-BbMPakooa?dl=0).

The test data can be found [here](https://www.dropbox.com/sh/iplhtgczu5tdmpo/AABMcIeLE-kM_Sk1MdoJMGD3a?dl=0).


## How to run

```
make
./bin/mcts -t <samples per group> -n <num recommendations>
```
