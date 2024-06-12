FROM ruby:3.3.2

WORKDIR /usr/src/app

# copy Gemfile to container
COPY Gemfile ./

# gems path
ENV BUNDLE_PATH /gems

# copy application dir to container
COPY . .
