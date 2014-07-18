# index.docker.io: wting/base
from ubuntu:12.04
maintainer William Ting <io@williamting.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

# Use University of Texas at Austin Mirror
RUN echo "deb http://ftp.utexas.edu/ubuntu/ precise main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb http://ftp.utexas.edu/ubuntu/ precise-security main restricted universe multiverse" >> /etc/apt/sources.list

# apt-fast.sh downloads packages in parallel for faster installations
ADD ./apt-fast.sh /usr/bin/apt-fast.sh

# downgrading python-minimal to prevent circular dependency
RUN apt-get update \
	&& apt-get install -y --force-yes python-minimal=2.7.3-0ubuntu2 \
	&& apt-fast.sh install -y \
		curl \
		wget \
		make \
		git \
		python-software-properties \
		sudo \
		vim-tiny \
	&& apt-fast.sh upgrade -y \
	&& dpkg-reconfigure -a
