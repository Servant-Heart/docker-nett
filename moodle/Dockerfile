FROM moodlehq/moodle-php-apache:8.2

# installs
RUN apt-get update && apt update
RUN apt-get install -y default-mysql-client nano texlive-latex-base lynx
RUN rm -rf /var/lib/apt/lists/*

# setup php error reports
RUN echo "log_errors = On" >> /usr/local/etc/php/php.ini
RUN echo "error_log = /var/log/apache2/error.log" >> /usr/local/etc/php/php.ini

# ensure that moodledata permissions are set propertly, then serve the site
CMD chown -R www-data /var/www/moodledata; apache2-foreground
