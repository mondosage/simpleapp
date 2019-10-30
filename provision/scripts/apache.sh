#! /bin/bash

apt-get install -y -qq apache2 libapache2-mod-wsgi

cat <<EOF > /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
    ServerName localhost
	ServerAdmin webmaster@localhost

    WSGIScriptAlias / /var/www/html/simpleapp/wsgi.py
    WSGIDaemonProcess simpleapp user=ubuntu group=ubuntu threads=5
          <Directory /var/www/html/simpleapp/>
                  WSGIProcessGroup simpleapp
                  WSGIScriptReloading On
                  WSGIApplicationGroup %{GLOBAL}
                  Require all granted
          </Directory>
          ErrorLog ${APACHE_LOG_DIR}/error.log
          LogLevel warn
          CustomLog ${APACHE_LOG_DIR}/access.log combined

</VirtualHost>
EOF

systemctl restart apache2