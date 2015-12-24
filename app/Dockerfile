FROM phusion/passenger-ruby22

# Set correct environment variables
ENV HOME /root

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
WORKDIR /home/app/site
COPY site /home/app/site
RUN chown -R app:app /home/app/site

RUN bundle install
# TODO bundle cache

# Enable ssh access
RUN rm -f /etc/service/sshd/down
COPY id_rsa.pub /root/.ssh/authorized_keys
