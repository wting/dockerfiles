# index.docker.io: wting/postgres
FROM wting/base
MAINTAINER William Ting <io@williamting.com>

RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# update
RUN aptitude update
RUN aptitude full-upgrade -y

# install postgres
RUN aptitude install -y postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3
