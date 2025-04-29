FROM nvidia/cuda:12.2.2-cudnn8-runtime-ubuntu22.04
LABEL maintainer="Erik Ferlanti <eferlanti@tacc.utexas.edu>"

# Update OS / Install Python
RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y python3.10-full python3-pip python-is-python3 && \
    apt-get autoremove -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install tensorflow
RUN pip install tensorflow==2.15.0 tensorflow-hub keras==2.15.0

# Install Jupyter and useful libraries
RUN pip install jupyter==1.1.1 \
    h5py==3.13.0 \
    matplotlib==3.10.1 \
    scikit-learn==1.6.1 \
    scikit-image==0.25.2 \
    pandas==2.2.3 \
    click==8.1.8 \
    rich==14.0.0

