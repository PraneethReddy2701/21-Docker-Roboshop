#!/bin/bash

if [ -f /tmp/mysql_root_password.txt ]; then
   PASSWORD=$(cat /tmp/mysql_root_password.txt)
   echo "Accessed root password"
else
    echo "password file not found"
    exit 1
fi


# making it as available in environment
export MYSQL_ROOT_PASSWORD=$PASSWORD

exec /entrypoint.sh mysqld


# #!/bin/bash

# if [ ! -f /tmp/mysql_root_password.txt ]; then
#   echo "Password file not found"
#   exit 1
# fi

# export MYSQL_ROOT_PASSWORD_FILE=/tmp/mysql_root_password.txt

# exec /entrypoint.sh mysqld