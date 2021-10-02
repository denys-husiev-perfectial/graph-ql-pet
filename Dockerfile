FROM ruby:3.0.2

RUN apt update -qq
RUN apt install -y postgresql-client

WORKDIR /graph-ql-pet
COPY ./ /graph-ql-pet
RUN gem install bundler

RUN bundle install

EXPOSE 3000
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
