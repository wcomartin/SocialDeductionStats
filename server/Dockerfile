FROM ruby:3.1.0
RUN apt-get update -qq && apt-get install -y postgresql-client
RUN mkdir /api
WORKDIR /api
COPY Gemfile /api/Gemfile
COPY Gemfile.lock /api/Gemfile.lock
RUN mkdir -p /api/log && touch /api/log/development.log
RUN gem install bundler
RUN bundle install
COPY . /api
RUN gem install foreman