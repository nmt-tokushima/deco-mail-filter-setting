FROM ruby:2.5.1
MAINTAINER ka <ka.kaosf@gmail.com>

RUN git clone https://github.com/nmt-tokushima/deco-mail-filter-setting /app

WORKDIR /app

RUN git checkout v1

ENV RAILS_MASTER_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# ref. https://qiita.com/NaokiIshimura/items/2a179f2ab910992c4d39
ENV RAILS_ENV=production

# Setup
RUN bin/bundle install && \
  bin/yarn install && \
  bin/rails assets:precompile

RUN bin/rails db:setup -e production

CMD bundle exec puma -p $PORT -c ./config/puma.rb
