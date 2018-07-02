FROM ruby:2.5.1
MAINTAINER ka <ka.kaosf@gmail.com>

RUN git clone https://github.com/nmt-tokushima/deco-mail-filter-setting /app

WORKDIR /app

# Node.js
ENV PATH $HOME/.nodebrew/current/bin:$PATH
RUN curl -L git.io/nodebrew | perl - setup && \
  nodebrew install-binary v9.11.2 && \
  nodebrew use v9.11.2
# ref. https://github.com/hokaccha/nodebrew

# Yarn
RUN apt-get update && apt-get -y install apt-transport-https && \
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get -y install yarn
# ref.
#   https://yarnpkg.com/lang/en/docs/install/#debian-stable
#   http://scribble.washo3.com/linux/debian%E3%81%A7sourcelist%E5%86%85%E3%81%AEhttps%E3%81%8C%E5%8F%96%E5%BE%97%E5%87%BA%E6%9D%A5%E3%81%AA%E3%81%84%E3%81%A8%E3%81%8D.html

# Setup
RUN bin/bundle install --without development test && \
  bin/yarn install && \
  bin/rails assets:precompile

RUN bin/rails db:setup -e production

ENV RAILS_MASTER_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
# ref. https://qiita.com/NaokiIshimura/items/2a179f2ab910992c4d39

CMD bin/rails s -e production -p $PORT -b 172.17.0.0 -b 127.0.0.0
