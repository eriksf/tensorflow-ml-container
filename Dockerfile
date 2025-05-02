FROM nvcr.io/nvidia/tensorflow:24.12-tf2-py3
LABEL maintainer="Erik Ferlanti <eferlanti@tacc.utexas.edu>"

# Install tensorflow-hub
RUN pip install tensorflow-hub==0.16.1

# Install useful libraries (not already installed)
RUN pip install matplotlib==3.10.1 \
    scikit-image==0.25.2 \
    sacremoses==0.1.1 \
    sentencepiece==0.2.0 \
    transformers==4.51.3

