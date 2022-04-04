FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y procps libgsl-dev libopenblas-dev

RUN conda install -c defaults -c bioconda -c conda-forge -y \
    pysam \
    bwa \
    samtools=1.12 \
    msprime=1.1.1 \
    art=2016.06.05=h874f42a_8