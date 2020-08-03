FROM ruby:2.6.3

ENV APP_ROOT /sinatra
WORKDIR $APP_ROOT
COPY Gemfile* $APP_ROOT

RUN gem install bundler:2.0.2 \
  && bundle install --path vendor/bundle \
  && rm -rf ~/.gem

COPY . $APP_ROOT
EXPOSE 4567
CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0"]