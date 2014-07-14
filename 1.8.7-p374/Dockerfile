FROM ashphy/centos-ruby:base
MAINTAINER Kazuki Hamasaki <ashphy@ashphy.com>

ENV CONFIGURE_OPTS --disable-install-doc
RUN bash -lc 'curl https://gist.githubusercontent.com/ashphy/0fb308d77be711d78816/raw/e616f0eaec9b2694347e66c63e7dc07a7d441b69/changeset_r43481.diff | rbenv install --patch  1.8.7-p374 /usr/local/rbenv/versions/1.8.7'

# bundler
RUN echo 'gem: --no-rdoc --no-ri' >> .gemrc
RUN bash -lc 'rbenv global 1.8.7-p374; gem install rbenv-rehash'
RUN bash -lc 'rbenv global 1.8.7-p374; gem install bundler'
RUN bash -lc 'rbenv rehash'
