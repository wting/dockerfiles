from ubuntu:12.04
maintainer William Ting <io@williamting.com>
# index.docker.io: wting/python2

run echo -e "\
	deb http://ftp.utexas.edu/ubuntu/ precise main restricted universe multiverse\n\
	deb http://ftp.utexas.edu/ubuntu/ precise-security main restricted universe multiverse\n\
	deb http://ftp.utexas.edu/ubuntu/ precise-updates main restricted universe multiverse" > \
	/etc/apt/sources.list
run apt-get update
run apt-get install -y aptitude
run aptitude upgrade -y

# install packages
run aptitude install -y \
       make \
       curl \
       wget \
       git \
       python \
       python-dev \
       python-pip

run pip install --upgrade pip
