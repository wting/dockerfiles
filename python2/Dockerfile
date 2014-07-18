# index.docker.io: wting/python2
FROM wting/base
MAINTAINER William Ting <io@williamting.com>

# install packages
RUN apt-fast.sh install -y \
	make \
	curl \
	wget \
	git \
	python \
	python-dev \
	python-pip

RUN pip install --upgrade pip
