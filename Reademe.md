
docker compose exec web bash

chown -R www-data:www-data /var/www/html/../application/../config/app.php
chmod -R 755 /var/www/html/../application/../config/app.php

chown -R www-data:www-data /var/www/html/../application/../config/bank.txt
chmod -R 755 /var/www/html/../application/../config/bank.txt




host: email-smtp.us-east-1.amazonaws.com
username: AKIAX3DNHKLZ2DP5CE2P
password: BMzcuh3N6gjAHxqlsvuXvA1oCD+GT960RBHgIzxO4N/a