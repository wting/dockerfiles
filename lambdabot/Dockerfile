# index.docker.io: wting/lambdabot
FROM wting/haskell-platform_2012
MAINTAINER William Ting <io@williamting.com>

# NOTE(wting|2014-07-20): ignored due to parent image env var:
# 	ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND interactive
ENV PATH /root/.cabal/bin:$PATH

RUN cabal install happy lambdabot; \
	cabal install happy \
	&& cabal install happy lambdabot
