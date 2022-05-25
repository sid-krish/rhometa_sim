<h1 align="center">Rhometa_sim - Metagenomic Read Simulation Pipeline</h1>
  <p align="center">
    Metagenomic read simulation pipeline with recombination and mutation

- [About](#about)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Set up using conda](#set-up-using-conda)
  - [Set up using docker](#set-up-using-docker)
- [Rhometa_sim pipeline composition](#rhometa_sim-pipeline-composition)


<!-- ABOUT -->
## About
Shotgun metagenomic read and reference genome simulator based on msprime. Designed to simulate reads with mutation and gene conversion type recombination. Originally designed to generate simualated datasets to help test metagenomic population recombination rate estimation pipeline rhometa, hence the name rhometa_sim.

### Built With

* [Nextflow](https://www.nextflow.io/)
* [Msprime](https://tskit.dev/msprime/docs/stable/intro.html)
* [ART read simulator](https://www.niehs.nih.gov/research/resources/software/biostatistics/art/index.cfm)


<!-- GETTING STARTED -->
## Getting Started

Rhometa_sim is designed to be run on linux and requires nextflow to be installed. 
Dependencies are resolved either via conda or docker images. Support for HPC, docker, singularity, AWS and many other systems are provided via nextflow.

While it is possible to resolve the dependencies using conda for running on macOS, its recommended that this option be used on linux systems for which it has been extensively test.
If running on macOS it recommended that docker be used with the provided image, in which case it is similar to running in a linux environment.

It is also possible to install and run the program on Windows via [wsl](https://docs.microsoft.com/en-us/windows/wsl/install).

### Set up using conda
Instructions for installing nextflow and dependencies via conda
1. Clone the repo
   ```sh
   git clone https://github.com/sid-krish/rhometa_sim.git
   ```
2. Install the conda package manager: [Miniconda download](https://conda.io/en/latest/miniconda.html)
3. Install nextflow
   ```sh
   conda install -c bioconda nextflow
   ```
4. Adjust settings in nextflow.config file, by default it is configured to work with docker with modest resources.
   Disable the use of docker by setting the docker option to false. Disabling the use of container engines will cause conda packages to be used by default:
   ```sh
   docker {
       enabled = false
   }
   ```
5. The pipeline is now ready to run, and all dependencies will be automatically resolved with conda.

### Set up using docker
Instructions for installing nextflow and using the provided docker image for dependencies
1. Clone the repo
   ```sh
    git clone https://github.com/sid-krish/rhometa_sim.git
   ```
2. Install nextflow [Nextflow install](https://www.nextflow.io/index.html#GetStarted)
3. Install docker desktop [Docker install](https://docs.docker.com/desktop/linux/).
4. Adjust settings in nextflow.config file, by default it is configured to work with docker with modest resources.
5. In the sim_gen.nf file comment the lines related to conda, for instance:
   ```
   // conda 'conda-forge::msprime=1.1.1 conda-forge::gsl'
   ```
6. Ensure docker is running.
7. The pipeline is now ready to run, all the required dependencies are present in the docker image, that the pipeline is preconfigured to use.

<!-- RHOMETA_SIM PIPELINE COMPOSITION -->
## Rhometa_sim pipeline composition
<img src="images/pipeline.png"  width=50% height=50%>