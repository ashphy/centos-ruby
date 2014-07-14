FROM centos
MAINTAINER Kazuki Hamasaki <ashphy@ashphy.com>

WORKDIR /root
USER root

# packages
RUN yum groupinstall -y "Development Tools"
RUN yum -y install openssl openssl-devel readline-devel readline libxml2-devel libxslt-devel libyaml-devel zlib zlib-devel git --enablerepo=centosplus

# rbenv
RUN git clone https://github.com/sstephenson/rbenv.git /usr/local/rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /usr/local/rbenv/plugins/ruby-build

ADD rbenv.sh /etc/drone.d/
ADD rbenv.sh /etc/profile.d/
