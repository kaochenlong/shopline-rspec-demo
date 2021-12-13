FROM ruby:2.7.5
RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends git nodejs npm
RUN npm install -g yarn
RUN gem install rails

WORKDIR /projects/myshopline
COPY Gemfile* /projects/myshopline
RUN bundle install

COPY . /projects/myshopline
CMD [ "bin/rails", "s", "-b", "0.0.0.0" ]
