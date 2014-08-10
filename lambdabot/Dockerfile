# index.docker.io: wting/lambdabot
FROM wting/haskell-platform:2014.2.0.0
MAINTAINER William Ting <io@williamting.com>

# NOTE(wting|2014-07-20): ignored due to parent image env var:
# 	ENV DEBIAN_FRONTEND noninteractive
ENV DEBIAN_FRONTEND interactive
ENV PATH /root/.cabal/bin:$PATH

RUN cabal update && cabal install cabal-install
RUN git clone https://github.com/mokus0/lambdabot.git /lambdabot
# RUN cabal install \
	# SafeSemaphore >=0.9 \
	# dependent-map >=0.1 \
	# dependent-sum-template >=0.0.0.1 \
	# edit-distance >=0.2 \
	# hslogger >=1.2.1 \
	# lifted-base >=0.2 \
	# monad-control >=0.3 \
	# random-fu >=0.2 \
	# random-source >=0.3 \
	# regex-tdfa >=1.1 \
	# transformers-base >=0.4 \
	# utf8-string >=0.3
ADD ./install.sh /install.sh
