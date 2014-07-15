FROM ashphy/centos6-ruby:base
MAINTAINER Kazuki Hamasaki <ashphy@ashphy.com>

ENV CONFIGURE_OPTS --disable-install-doc
RUN bash -lc 'rbenv install 2.1.2'

# bundler
RUN echo 'gem: --no-rdoc --no-ri' >> .gemrc
RUN bash -lc 'rbenv global 2.1.2; gem install rbenv-rehash'
RUN bash -lc 'rbenv global 2.1.2; gem install bundler'
RUN bash -lc 'rbenv rehash'
