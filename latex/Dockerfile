# index.docker.io: wting/latex
from wting/base
maintainer William Ting <io@williamting.com>

# LaTeX 2012
run add-apt-repository -y ppa:texlive-backports/ppa
run aptitude update

# install packages
run apt-fast.sh install -y \
	fontconfig \
	texlive-latex-base \
	texlive-xetex \
	latex-xcolor \
	texlive-math-extra \
	texlive-latex-extra \
	texlive-fonts-extra \
	biblatex
