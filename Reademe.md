
docker compose exec web bash

chown -R www-data:www-data /var/www/html/../application/../config/app.php
chmod -R 755 /var/www/html/../application/../config/app.php

chown -R www-data:www-data /var/www/html/../application/../config/bank.txt
chmod -R 755 /var/www/html/../application/../config/bank.txt

chown -R www-data:www-data /var/www/html/../public/upload/
chmod -R 755 /var/www/html/../application/../public/upload/

sudo chown -R ec2-user:ec2-user /home/ec2-user/ecom/public/web/css


host: email-smtp.us-east-1.amazonaws.com
username: AKIAX3DNHKLZ2DP5CE2P
password: BMzcuh3N6gjAHxqlsvuXvA1oCD+GT960RBHgIzxO4N/a


==================== mysql install ============================

sudo docker network create ecom

sudo docker run -p 3306:3306 --restart=always --name mysql \
--network ecom \
-v ~/data/mysql/logs:/var/log/mysql \
-v ~/data/mysql/data:/var/lib/mysql \
-e MYSQL_ROOT_PASSWORD=ZAYg8dnDI5sqkjRNpc7 \
-d mysql:5.7

sudo docker exec -it mysql mysql -u root -p

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'ZAYg8dnDI5sqkjRNpc7' WITH GRANT OPTION;
FLUSH PRIVILEGES;


==================== redis6 install ==============================
sudo yum install redis6
sudo systemctl start redis6
sudo systemctl enable redis6
sudo systemctl status redis6
redis6-cli

sudo nano /etc/redis6/redis6.conf
bind 0.0.0.0

sudo systemctl restart redis6

redis6-cli -h 51.20.74.52 -p 6379
redis6-cli -h 51.20.189.23 -p 6379