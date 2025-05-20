FROM continuumio/miniconda3:latest

RUN apt-get install -y procps

RUN conda update conda -y

RUN conda install -c bioconda -c conda-forge -y \
    'python=3.12' \
    'pysam=0.22' \
    'bwa-mem2=2.2.1' \
    'samtools=1.18' \
    'msprime=1.3.4' \
    'art=2016.06.05=h*_8' \
    'gsl' \
    'libcblas' \
    'libcxx' \
    'openssl' && conda clean -a -y
