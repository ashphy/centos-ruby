FROM ashphy/centos6-ruby:base
MAINTAINER Kazuki Hamasaki <ashphy@ashphy.com>

RUN yum install -y autoconf
ENV CONFIGURE_OPTS --disable-install-doc
RUN bash -lc 'rbenv install #{version}'

# bundler
RUN echo 'gem: --no-rdoc --no-ri' >> .gemrc
RUN bash -lc 'rbenv global #{version}; gem install rbenv-rehash'
RUN bash -lc 'rbenv global #{version}; gem install bundler'
RUN bash -lc 'rbenv rehash'
