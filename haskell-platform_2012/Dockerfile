# index.docker.io: wting/haskell-platform_2012
FROM wting/base
MAINTAINER William Ting <io@williamting.com>

# install packages
RUN apt-fast.sh -y install \
	libdrm-dev \
	libdrm-nouveau2=2.4.43-0ubuntu0.0.3 \
	libkms1=2.4.43-0ubuntu0.0.3 \
	libdrm-intel1=2.4.43-0ubuntu0.0.3 \
	libdrm-nouveau1a=2.4.43-0ubuntu0.0.3 \
	libdrm-radeon1=2.4.43-0ubuntu0.0.3 \
	libdrm2=2.4.43-0ubuntu0.0.3 \
	&& apt-fast.sh -y install \
		cabal-install \
		haskell-platform \
		libncurses-dev \
		libpcre3-dev \
		libreadline-dev \
		zlib1g-dev
