ARG FROM_IMAGE
ARG FROM_TAG
FROM ${FROM_IMAGE}:${FROM_TAG}

RUN set -eux ;\
	apt-get update ;\
    apt-get install -y locales ;\
    echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen ;\
    /usr/sbin/locale-gen ;\
	update-locale LANG=en_US.UTF-8 ;\
	\
    apt-get clean ;\
    rm -rf /var/lib/apt/lists/*


ENV LANG=en_US.UTF-8 \
	LANGUAGE=en_US.UTF-8 \
	LC_CTYPE=en_US.UTF-8 \
	LC_ALL=en_US.UTF-8 \
    TZ="Asia/Shanghai"

WORKDIR /data