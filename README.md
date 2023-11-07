# CUDA-BEVFusion Env

Download TensorRT TAR Package from <https://developer.nvidia.com/nvidia-tensorrt-8x-download>. tested with `TensorRT 8.6 GA for Linux x86_64 and CUDA 11.0, 11.1, 11.2, 11.3, 11.4, 11.5, 11.6, 11.7 and 11.8 TAR Package`

```shell
tar -xf ~/Downloads/TensorRT-8.6.1.6.Linux.x86_64-gnu.cuda-11.8.tar.gz
HOST_TENSORRT_PATH=$HOME/Downloads/TensorRT-8.6.1.6 make run-rocker
```

And then, folloing [the official guideline for CUDA-BEVFusion](https://github.com/NVIDIA-AI-IOT/Lidar_AI_Solution/tree/master/CUDA-BEVFusion).
