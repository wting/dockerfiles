# index.docker.io: wting/haskell-platform
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
		libncurses-dev \
		libpcre3-dev \
		libreadline-dev \
		zlib1g-dev
RUN curl https://www.haskell.org/platform/download/2014.2.0.0/haskell-platform-2014.2.0.0-unknown-linux-x86_64.tar.gz | tar xz
RUN /usr/local/haskell/ghc-7.8.3-x86_64/bin/activate-hs \
	&& cabal update \
	&& cabal install cabal-install
