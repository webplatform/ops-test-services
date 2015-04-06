FROM ruby:2.1-onbuild

MAINTAINER renoirb 'https://renoirboulanger.com/renoirb'

RUN apt-get update && apt-get -y upgrade
RUN apt-get -y autoremove

VOLUME [/usr/src/myapp]
WORKDIR /usr/src/myapp

CMD ["/bin/bash"]
