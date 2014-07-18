# index.docker.io: wting/lambdabot
FROM wting/ghc-7.4.1
MAINTAINER William Ting <io@williamting.com>

ENV PATH /root/.cabal/bin:$PATH

RUN apt-fast.sh install -y libncurses-dev libpcre3-dev zlib1g-dev \
	&& cabal update \
	&& cabal install cabal-install \
	&& cabal install happy lambdabot
