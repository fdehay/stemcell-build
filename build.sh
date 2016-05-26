#!/bin/bash 

cd bosh-repo
sudo su -
bundle install --local
bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz]
