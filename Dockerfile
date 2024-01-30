# syntax = docker/dockerfile:latest
FROM nvidia/cuda:11.8.0-devel-ubuntu20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# ref: https://stackoverflow.com/a/77802714
ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential htop wget locate \
    libprotobuf-dev cmake libcudnn8 libcudnn8-dev \
    python3-dev python-is-python3 python3-pip \
    libcublas-12-0 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
