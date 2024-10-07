FROM ruby:3.2.5

RUN apt update -qq && apt install -y build-essential

# for postgres
RUN apt install -y libpq-dev

# for nokogiri
RUN apt install -y libxml2-dev libxslt1-dev

# for a JS runtime
RUN apt install -y nodejs

WORKDIR /app

RUN gem install rails -v 7.2.1
