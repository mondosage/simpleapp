#! /bin/bash

pip install flask
cd /var/www/html/
git clone https://github.com/fugue-sage/simpleapp.git
cd /var/www/html/simpleapp/
pip install -r requirements.txt
systemctl restart apache2