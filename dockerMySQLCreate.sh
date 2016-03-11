DB_ROOT_PASS="toor"
DB_NAME="myDatabase"
CONFIG_DIR="$HOME/mysql_config"
DATA_DIR="$HOME/mysql_data"

mkdir -p $DATA_DIR
mkdir -p $CONFIG_DIR
mkdir -p $CONFIG_DIR/conf.d

cd $CONFIG_DIR
curl -o my.cnf http://pastebin.com/raw.php?i=aV4pXRQD

docker run \
-e MYSQL_ROOT_PASSWORD=$DB_ROOT_PASS \
-p 3306:3306 \
-v $CONFIG_DIR:/etc/mysql \
--name mysql \
-v $DATA_DIR:/var/lib/mysql \
-d \
darioalessandro/mysql
