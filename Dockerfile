FROM ruby:3.2.5

RUN apt update -qq && apt install -y build-essential

WORKDIR /app

RUN gem install rails -v 7.2.1

