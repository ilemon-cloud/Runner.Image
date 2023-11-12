ARG FROM_IMAGE
ARG FROM_TAG
FROM ${FROM_IMAGE}:${FROM_TAG}

ARG ASSEMBLY=default
ARG DISTRO

# > Force apt to not be interactive/not ask
ENV DEBIAN_FRONTEND=noninteractive \
	AGENT_TOOLSDIRECTORY=/opt/hostedtoolcache


SHELL [ "/bin/bash", "--login", "-e", "-o", "pipefail", "-c" ]

COPY ./linux/${DISTRO}/scripts /data/installers
RUN cd /data/installers ;\
	bash assembly/$ASSEMBLY.sh ;\
    rm -rfv /data/installers

WORKDIR /data