# Built from: https://hub.docker.com/r/continuumio/miniconda3/~/dockerfile/

FROM debian:latest

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV PATH /opt/conda/bin:$PATH

RUN apt-get update --fix-missing
RUN apt-get install -y wget bzip2 ca-certificates curl git gcc
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.5.4-Linux-x86_64.sh -O ~/miniconda.sh
RUN /bin/bash ~/miniconda.sh -b -p /opt/conda
RUN rm ~/miniconda.sh
# RUN /opt/conda/bin/conda clean
RUN ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh
RUN echo ". /opt/conda/etc/profile.d/conda.sh" >> ~/.bashrc
RUN echo "conda activate base" >> ~/.bashrc

COPY requirements.txt /tmp
WORKDIR /tmp
RUN pip install -r requirements.txt
