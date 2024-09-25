
docker compose exec web bash

chown -R www-data:www-data /var/www/html/../application/../config/app.php
chmod -R 755 /var/www/html/../application/../config/app.php

chown -R www-data:www-data /var/www/html/../application/../config/bank.txt
chmod -R 755 /var/www/html/../application/../config/bank.txt

chown -R www-data:www-data /var/www/html/../public/upload/
chmod -R 755 /var/www/html/../application/../public/upload/

chown -R www-data:www-data /var/www/html/upload/
chmod -R 755 /var/www/html/upload/

chown -R www-data:www-data /var/www/public/upload/
chmod -R 755 /var/www/public/upload/

sudo chown -R ec2-user:ec2-user /home/ec2-user/ecom/public/web/css
sudo chown -R ec2-user:ec2-user /home/ec2-user/ecom/config


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

================== crontab ====================
0 0 * * * curl http://localhost/index/shop/down_goods  // every day
* * * * * curl http://51.20.74.52:8008/index/shop/down_goods  // every minute -------------- don't working
* * * * * /usr/bin/wget -O - http://51.20.74.52:8008/index/shop/down_goods > /dev/null 2>&1
50 23 * * * /usr/bin/wget -O - http://51.20.74.52:8008/index/order/check_vip_order > /dev/null 2>&1


To insert text in Vim when editing a crontab after running crontab -e, follow these steps:
Step-by-Step Instructions

    Open crontab with Vim: Run the following command to open the crontab file in Vim:

    bash

crontab -e

Enter Insert Mode: Once you're inside Vim, you will be in normal mode by default. To insert or edit text, you need to switch to insert mode.

    Press the i key to enter insert mode. You should see the word -- INSERT -- at the bottom of the screen.

Add Your Cron Job: Now, you can type the cron job you want to add.

For example, to run a script daily at 2:00 AM:

bash

0 2 * * * /path/to/your/script.sh

Exit Insert Mode: Once you have added the cron job, press the ESC key to return to normal mode.

Save and Exit Vim: To save and exit the crontab file:
    press Esc.
    Type :wq (write and quit) and press Enter.

If you want to quit without saving changes, use:

    Type :q! and press Enter.