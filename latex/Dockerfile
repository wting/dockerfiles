# index.docker.io: wting/latex
FROM wting/base
MAINTAINER William Ting <io@williamting.com>

# LaTeX 2012
RUN add-apt-repository -y ppa:texlive-backports/ppa
RUN aptitude update

# install packages
RUN apt-fast.sh install -y \
	fontconfig \
	texlive-latex-base \
	texlive-xetex \
	latex-xcolor \
	texlive-math-extra \
	texlive-latex-extra \
	texlive-fonts-extra \
	biblatex
