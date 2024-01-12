FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel
LABEL maintainer="OMRON SINIC X"

ENV AM_I_DOCKER True
ENV CUDA_HOME /usr/local/cuda
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y bash \
    vim \
    build-essential \
    wget \
    cmake \
    git \
    git-lfs \
    curl \
    make \
    flex \
    bison \
    ffmpeg \
    libsm6 \
    libxext6 && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/user/ViLaIn
COPY . /home/user/ViLaIn
RUN python -m pip install -r /home/user/ViLaIn/requirements.txt

# install GroundingDINO
WORKDIR /home/user/ViLaIn
RUN git clone https://github.com/IDEA-Research/GroundingDINO.git && \
    cd GroundingDINO/ && \
    TORCH_CUDA_ARCH_LIST="3.5;5.0;6.0;6.1;7.0;7.5;8.0+PTX" python -m pip install . && \
    mkdir weights && \
    cd weights && \
    wget -q https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha2/groundingdino_swinb_cogcoor.pth   

# install fast-downward and VAL
WORKDIR /home/user/ViLaIn
RUN git clone https://github.com/aibasel/downward.git && \ 
    cd downward && \
    python ./build.py && \
    cd .. && \
    git clone https://github.com/KCL-Planning/VAL.git && \
    cd VAL && \
    git checkout a5565396007eee73ac36527fbf904142b3077c74 && \
    make clean && \
    sed -i 's/-Werror //g' Makefile && \
    make && \
    cd .. && \
    ln -s $(readlink -f ./VAL/validate) downward 

CMD ["/bin/bash"]
