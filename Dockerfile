# syntax = docker/dockerfile:latest
FROM nvidia/cuda:11.8.0-devel-ubuntu20.04

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential htop wget locate \
    libprotobuf-dev cmake libcudnn8 libcudnn8-dev \
    python3-dev python-is-python3 python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
