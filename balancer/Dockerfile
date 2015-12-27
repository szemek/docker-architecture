FROM nginx

RUN apt-get update -qq && apt-get install -y curl

RUN apt-get install -y ruby

RUN mkdir -p /opt/scripts

COPY init /opt/scripts/init

COPY configure.rb /opt/scripts/configure.rb
COPY default.conf.erb /opt/scripts/default.conf.erb

CMD ["/opt/scripts/init"]
