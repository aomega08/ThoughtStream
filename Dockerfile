FROM ruby:2.5

RUN mkdir /app
WORKDIR /app

RUN bundle config --local jobs 4

ADD Gemfile Gemfile.lock ./
RUN bundle install

ADD . ./

CMD ["rails", "server"]
