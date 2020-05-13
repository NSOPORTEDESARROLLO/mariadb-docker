# mariadb-docker
MariaDB Data Base engine

# ENV Options
- MYSQL_ROOT_PASSWORD

# Volumes
- /var/lib/mysql
- /etc/mysql

# Docker Simple Run
- docker run --name=mariadb --net=host -v /etc/localtime:/etc/localtime:ro -d  nsoporte/mariadb:tag

# Docker Full Run
- docker run --name=mariadb --net=host -e MYSQL_ROOT_PASSWORD="yourpassword" -v /etc/localtime:/etc/localtime:ro -v /tmp/mysql:/var/lib/mysql -v /tmp/etc:/etc/mysql -d  nsoporte/mariadb:tag

