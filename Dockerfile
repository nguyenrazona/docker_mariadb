FROM mariadb:latest

ENV MARIADB_ROOT_PASSWORD=root
ENV MARIADB_DATABASE=sample
ENV MARIADB_USER=sample
ENV MARIADB_PASSWORD=sample

# Change OS timezone to Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && echo Asia/Tokyo > /etc/timezone && chown -R mysql:root /var/lib/mysql/

COPY my.cnf /etc/my.cnf

RUN chmod 0444 /etc/my.cnf

CMD ["mysqld"]

EXPOSE 3306
