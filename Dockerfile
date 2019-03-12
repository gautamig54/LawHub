FROM ubuntu:18.04
FROM ruby:2.4.1
MAINTAINER marko@codeship.com

RUN apt-get update && apt-get install -y \
  build-essential \
  nodejs

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler && bundle install --jobs 20 --retry 5
COPY . ./

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
