This is a simple Flask app with some forms and a MySQL backend. It's useful as a basis for demos of things I use for work.

I've set this up with a config file with the following structure:
```
SECRET_KEY = 'you-should-change-this'
MYSQL_DATABASE_USER = '<your_db_user>'
MYSQL_DATABASE_PASSWORD = '<your_db_password>' 
MYSQL_DATABASE_DB = 'users'
MYSQL_DATABASE_HOST = '<your_db_host>'
```
This app expects a valid `newrelic.ini` file to be present. You can find out more about that here: https://docs.newrelic.com/docs/agents/python-agent/installation/advanced-install-new-relic-python-agent
