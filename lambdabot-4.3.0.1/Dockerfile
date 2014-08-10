# index.docker.io: wting/lambdabot
FROM wting/haskell-platform:2012.1.0.0
MAINTAINER William Ting <io@williamting.com>

# NOTE(wting|2014-07-20): ignored due to parent image env var:
# 	ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND interactive
ENV PATH /root/.cabal/bin:$PATH

RUN cabal update \
	&& cabal install cabal-install \
	&& cabal install lambdabot-4.3.0.1
