FROM wordpress:5.8.1

# Install node
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash - && apt-get install -y nodejs gcc g++ make

# Run wordpress commands
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
