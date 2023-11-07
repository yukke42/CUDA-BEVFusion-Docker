BEVFUSION_IMAGE:=lidar-ai-solution
HOST_PROJECT_PATH:=$(PWD)/Lidar_AI_Solution
CONTAINER_PROJECT_PATH:=/opt/Lidar_AI_Solution
CONTAINER_TENSORRT_PATH:=/opt/TensorRT

.PHONY: build-docker
build-docker:
	docker build . \
		-t $(BEVFUSION_IMAGE) \
		-f Dockerfile

.PHONY: run-rocker
run-rocker:
	@rocker --nvidia --x11 --user --privileged \
		--network host \
		--oyr-run-arg " --workdir $(CONTAINER_PROJECT_PATH)/CUDA-BEVFusion --ipc=host" \
		--volume \
			$(HOST_TENSORRT_PATH):$(CONTAINER_TENSORRT_PATH) \
			$(HOST_PROJECT_PATH):$(CONTAINER_PROJECT_PATH) \
			$(CURDIR)/environment.sh:$(CONTAINER_PROJECT_PATH)/CUDA-BEVFusion/tool/environment.sh \
			$(MOUNT_PATH) \
		-- \
		$(BEVFUSION_IMAGE)
