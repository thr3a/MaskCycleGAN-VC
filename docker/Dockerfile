FROM continuumio/anaconda3:2021.04

WORKDIR /app

COPY environment.yml ./

RUN apt-get update && apt-get install -y build-essential libgl1-mesa-dev
RUN conda env create -f environment.yml
# RUN  conda activate MaskCycleGAN-VC
# conda run --name MaskCycleGAN-VC python test.py
