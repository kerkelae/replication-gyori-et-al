> 🚨 This repository is a work in progress!

# Replication of "Training data distribution significantly impacts the estimation of tissue microstructure with machine learning"

This repository contains the code for replicating the main results of the following paper:

Gyori, Noemi G., et al. _"Training data distribution significantly impacts the estimation of tissue microstructure with machine learning."_ Magnetic resonance in medicine 87.2 (2022): 932-947. [DOI:10.1002/mrm.29014]( https://doi.org/10.1002/mrm.29014)

## Installation

All the code in this repository has been written using [Anaconda](https://www.anaconda.com/download). The development environment with all the required packages is defined in `environment.yml`, which can be installed by executing

```
conda env create -f environment.yml
```

## Download raw data

We will use a 2-shell high-angular resolution diffusion imaging (HARDI) scan that can be downloaded by executing
```
python fetch_data.py
```