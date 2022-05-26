# Ecoli-GEM: The generic genome-scale metabolic model of _Escherichia coli_

[![GitHub version](https://badge.fury.io/gh/haowang-bioinfo%2FEcoli-GEM.svg)](https://badge.fury.io/gh/haowang-bioinfo%2FEcoli-GEM)

#### Description

This repository is meant to replicate the published _iML1515_ genome-scale metabolic model in the format expected by standard-GEM, to facilitate reuse by other databases and automatic pipelines

#### Citation

> Monk, J., Lloyd, C., Brunk, E. _et al._ *i*ML1515, a knowledgebase that computes _Escherichia coli_ traits. _Nature Biotech._ 35, 904-8 (2017). [doi.org/10.1038/nbt.3956](https://doi.org/10.1038/nbt.3956)

#### Model Keywords

**Utilisation:** multi-omics integrative analysis, predictive simulation  
**Field:** metabolic-network reconstruction  
**Type of Model:** reconstruction, curated  
**Model source:**  
**Omic source:** genomics; metabolomics  
**Taxonomic name:** _Escherichia coli_ K-12 MG1655  
**Taxonomy ID:** [511145](https://identifiers.org/taxonomy:511145)  
**Genome ID:** [GCF_000005845.2](https://identifiers.org/insdc.gca:GCF_000005845.2)  
**Metabolic System:** general metabolism  
**Tissue:** N.A.
**Bioreactor:**  
**Cell type:** N.A.
**Cell line:** N.A.
**Condition:**

### Model Overview

| Taxonomy           | Template Model | Reactions | Metabolites | Genes |
| ------------------ | :------------: | :-------: | :---------: | :---: |
| _Escherichia coli_ |      N.A.      |   2712    |    1877     | 1516  |

## Installation

### Required Software

- A functional MATLAB installation (MATLAB 7.3 and higher).
- The [RAVEN toolbox](https://github.com/SysBioChalmers/RAVEN).
- The [COBRA toolbox](https://github.com/opencobra/cobratoolbox) (not necessary for most functionality).

### Dependencies - Recommended Software

- The libSBML MATLAB API (version [5.13.0](https://sourceforge.net/projects/sbml/files/libsbml/5.13.0/stable/MATLAB%20interface/) is recommended).
- [Gurobi Optimizer](http://www.gurobi.com/registration/download-reg) for any simulations.

### Installation Instructions

- Clone the [main branch](https://github.com/haowang-bioinfo/Ecoli-GEM/tree/main) of this repository, or [download the latest release](https://github.com/haowang-bioinfo/Ecoli-GEM/releases/latest).
- Add the directory to your MATLAB path (instructions [here](https://se.mathworks.com/help/matlab/ref/addpath.html?requestedDomain=www.mathworks.com)).

## Usage

#### Loading/saving the model

`Ecoli-GEM.mat` (Recommended if on `main` branch)

- Load and save using the built-in MATLAB `load()` and `save()` functions.

`Ecoli-GEM.xml` (SBML format)

- Load using the `importModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))
- Save using the `exportModel.m` function (from [RAVEN Toolbox](https://github.com/SysBioChalmers/RAVEN))

## Websites

- [BiGG](http://bigg.ucsd.edu/models/iML1515)

### Contributing

Contributions are always welcome! Please read the [contributing guidelines](.github/CONTRIBUTING.md) to get started.
