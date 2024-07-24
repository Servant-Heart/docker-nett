FROM moodlehq/moodle-php-apache:7.4

# installs
RUN apt-get update && apt update
RUN apt-get install -y default-mysql-client nano texlive-latex-base
RUN rm -rf /var/lib/apt/lists/*

# ensure that moodledata permissions are set propertly, then serve the site
CMD chown -R www-data /var/www/moodledata; apache2-foreground
