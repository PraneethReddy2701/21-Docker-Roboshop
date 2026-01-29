FROM mysql:8.0
ENV MYSQL_ROOT_PASSWORD=RoboShop@1
COPY db/* /docker-entrypoint-initdb.d


# #!/bin/bash

# if [ ! -f /tmp/mysql_root_password.txt ]; then
#   echo "Password file not found"
#   exit 1
# fi

# export MYSQL_ROOT_PASSWORD_FILE=/tmp/mysql_root_password.txt

# exec /entrypoint.sh mysqld
