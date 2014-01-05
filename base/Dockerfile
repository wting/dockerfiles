# index.docker.io: wting/base
from ubuntu:12.04
maintainer William Ting <io@williamting.com>

run echo "deb http://ftp.utexas.edu/ubuntu/ precise main restricted universe multiverse" > /etc/apt/sources.list
run echo "deb http://ftp.utexas.edu/ubuntu/ precise-security main restricted universe multiverse" >> /etc/apt/sources.list
run apt-get update
run apt-get install -y aptitude
run aptitude install -y apt-utils dialog
run aptitude install -y \
	curl \
	wget \
	make \
	git \
	python-software-properties \
	sudo \
	vim
run aptitude upgrade -y
