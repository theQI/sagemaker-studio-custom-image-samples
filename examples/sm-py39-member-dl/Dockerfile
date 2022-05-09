FROM continuumio/miniconda3:4.9.2

RUN apt-get -y update && apt-get install -y --no-install-recommends \
         wget \
         python3-pip \
         python3-setuptools \
         nginx \
         ca-certificates \
    && rm -rf /var/lib/apt/lists/*

COPY environment.yml .
RUN conda env create -f environment.yml
