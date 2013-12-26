from ubuntu:12.04
maintainer William Ting <io@williamting.com>

run echo "\
	deb http://mirrors.digitalocean.com/ubuntu/ precise main restricted universe multiverse\n\
	deb http://mirrors.digitalocean.com/ubuntu/ precise-security main restricted universe multiverse\n\
	deb http://mirrors.digitalocean.com/ubuntu/ precise-updates main restricted universe multiverse" > \
	/etc/apt/sources.list
run apt-get update
run apt-get install -y aptitude
run aptitude upgrade -y

# add LaTeX backports
run aptitude install -y python-software-properties
run add-apt-repository -y ppa:texlive-backports/ppa
run aptitude update

# install packages
run aptitude install -y \
    texlive-latex-base texlive-xetex latex-xcolor texlive-math-extra \
    texlive-latex-extra texlive-fonts-extra biblatex \
    curl wget git fontconfig make