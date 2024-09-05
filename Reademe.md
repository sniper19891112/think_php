
docker compose exec web bash

chown -R www-data:www-data /var/www/html/../application/../config/app.php
chmod -R 755 /var/www/html/../application/../config/app.php

chown -R www-data:www-data /var/www/html/../application/../config/bank.txt
chmod -R 755 /var/www/html/../application/../config/bank.txt