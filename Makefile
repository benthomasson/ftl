
.PHONY: all


all: build


build:
	podman build -t quay.io/ftl/ftl:latest .

shell:
	podman run -it --rm --name ftl-dev -v $(PWD):/opt/app-root/src --entrypoint /bin/bash quay.io/ftl/ftl:latest


push:
	podman push quay.io/ftl/ftl:latest
