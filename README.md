> 🚨 The data is no longer available to download.

# Replication of "Training data distribution significantly impacts the estimation of tissue microstructure with machine learning"

This repository contains the code for replicating the main results of the following paper:

Gyori, Noemi G., et al. _"Training data distribution significantly impacts the estimation of tissue microstructure with machine learning."_ Magnetic resonance in medicine 87.2 (2022): 932-947. [DOI:10.1002/mrm.29014]( https://doi.org/10.1002/mrm.29014)

## Installation

All the code in this repository has been run using [Anaconda](https://www.anaconda.com/download). The development environment with all the required packages is defined in `environment.yml`, which can be installed by executing

```
conda env create -f environment.yml
```

Then, you can activate the environment with

```
conda activate replication_env
```

## Download data

We will use a 2-shell high-angular resolution diffusion imaging (HARDI) data. You can download the preprocessed data or the raw data and run the preprocessing script yourself (this can take some time).

### Preprocessed data

Preprocessed data can be downloaded by executing

```
python fetch_preprocessed_data.py
```

### Raw data

Raw data can be downloaded by executing

```
python fetch_raw_data.py
```

Raw diffusion MRI data needs to be pre-processed before analysis. Running the preprocessing script requires [fsl](https://fsl.fmrib.ox.ac.uk/) to be installed. I ran the preprocessing using fsl version 6.0.7.3. You can run the preprocessing script by executing

```
bash preprocessing.sh
```

## Conventional model fit

In order to run the conventional model fit, you need to install [smt](https://github.com/ekaden/smt) and run

```
bash fit_smt.sh
```

## Training and comparison

Once the data has been prepared and the parameters estimated using the conventional model fit, the network can be trained using the notebooks `train_uniform.ipynb` and `train_healthy_brain.ipynb`. The results can be compared using the notebook `comparison.ipynb`.
