FROM moodlehq/moodle-php-apache:7.4

# installs
RUN apt-get update && apt update
RUN apt-get install -y default-mysql-client nano
RUN rm -rf /var/lib/apt/lists/*

# serve the site
CMD ["apache2-foreground"]
