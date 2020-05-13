FROM debian:buster


COPY files/ns-start /usr/bin/


RUN	apt-get update \
	&& apt-get -y upgrade \
	&& DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server \
	&& sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf \
	&& tar -czf /opt/mariadb.tgz /var/lib/mysql \
	&& tar -czf /opt/mariadb-etc.tgz /etc/mysql \
	&& chmod +x /usr/bin/ns-start \
	&& rm -rf /var/lib/mysql/* \
	&& rm -rf /etc/mysql/*




VOLUME ["/var/lib/mysql"]
VOLUME ["/etc/mysql"]

ENTRYPOINT ["/usr/bin/ns-start"]