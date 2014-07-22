# index.docker.io: wting/haskell-platform_2012
FROM wting/base
MAINTAINER William Ting <io@williamting.com>

# install packages
RUN apt-fast.sh install -y \
	cabal-install \
	darcs \
	haskell-platform \
	libncurses-dev \
	libpcre3-dev \
	libreadline-dev \
	zlib1g-dev \
	&& cabal update
