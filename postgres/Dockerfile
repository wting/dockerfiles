# index.docker.io: wting/postgres
from wting/base
maintainer William Ting <io@williamting.com>

run wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
run echo "deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main" > /etc/apt/sources.list.d/pgdg.list

# update
run aptitude update
run aptitude full-upgrade -y

# install postgres
run aptitude install -y postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3
