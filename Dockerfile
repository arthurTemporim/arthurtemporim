FROM ruby:2.7

EXPOSE 4000

ENV JEKYLL_ENV production

ENV LC_ALL C.UTF-8

COPY . /site

WORKDIR /site

RUN bundle install

ENTRYPOINT bundle exec jekyll server --livereload -H 0.0.0.0