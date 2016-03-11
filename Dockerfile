FROM mysql
MAINTAINER Dario Talarico "darioalessandrolencina@gmail.com"

ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_PASSWORD password
ENV MYSQL_DATABASE databasename

# this need to stay the same for script to work
ENV MYSQL_USER mysql

COPY localdb-run.sh /
RUN chmod 755 /localdb-run.sh

ENTRYPOINT ["/localdb-run.sh"] 
