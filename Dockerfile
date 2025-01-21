FROM ruby:3.2.0

RUN apt update -qq && apt install -y build-essential

WORKDIR /app

RUN gem install rails -v 8.0.1

