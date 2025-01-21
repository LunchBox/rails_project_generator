FROM ruby:3.2.5

RUN apt update -qq && apt install -y build-essential

RUN apt install -y vim

# for postgres
RUN apt install -y libpq-dev

# for nokogiri
RUN apt install -y libxml2-dev libxslt1-dev

# for a JS runtime
RUN apt install -y nodejs

ARG UNAME=testuser
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME

WORKDIR /app

RUN gem install rails -v 8.0.1

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install
