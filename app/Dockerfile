FROM phusion/passenger-ruby22

# Set correct environment variables
ENV HOME /root

WORKDIR /home/app/site

# Use baseimage-docker's init system
CMD ["/sbin/my_init"]

# Start nginx/passenger
RUN rm -f /etc/service/nginx/down

# Remove the default site
RUN rm /etc/nginx/sites-enabled/default

# Add the nginx site and config
ADD site.conf /etc/nginx/sites-enabled/site.conf
ADD rails-env.conf /etc/nginx/main.d/rails-env.conf

# Add the Rails app
COPY site /home/app/site
RUN chown -R app:app /home/app/site

# Enable ssh access
RUN rm -f /etc/service/sshd/down
COPY id_rsa.pub /root/.ssh/authorized_keys

COPY bundle.sh /etc/my_init.d/60_bundle.sh
