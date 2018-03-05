FROM ruby:2.5
MAINTAINER Motoki Yoan <motoki.yoan@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hound
WORKDIR /hound
COPY Gemfile /hound/Gemfile
COPY Gemfile.lock /hound/Gemfile.lock
RUN bundle install
COPY . /hound
