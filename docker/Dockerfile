FROM continuumio:anaconda3:2021.04

WORKDIR /app

COPY environment.yml ./

# RUN apt-get update && apt-get install -y libsndfile1-dev
RUN conda env create -f environment.yml
RUN  conda activate MaskCycleGAN-VC
