SHELL := bash

default: run

build:
		docker run --rm -v "$(CURDIR)":/usr/src/app -w /usr/src/app ruby:2.1 bundle install
		docker build -t renoirb-serverspec .

run:
		docker run -it --rm -v "$(CURDIR)":/usr/src/myapp -w /usr/src/myapp renoirb-serverspec rake

