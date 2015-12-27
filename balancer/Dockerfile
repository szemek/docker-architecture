FROM nginx

RUN apt-get update -qq && apt-get install -y curl

COPY default.conf etc/nginx/conf.d/default.conf

COPY init /opt/init

CMD ["/opt/init"]
