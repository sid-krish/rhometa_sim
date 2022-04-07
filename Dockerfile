FROM continuumio/miniconda3:latest

RUN apt-get install -y procps

RUN conda update conda -y

RUN conda install -c bioconda -c conda-forge -y \
    python>=3.9 \
    pysam=0.17 \
    bwa \
    samtools==1.15 \
    openssl=1.1.1n \
    msprime=1.1.1 \
    art=2016.06.05=h*_8 \
    gsl \
    libcblas \
    libcxx
