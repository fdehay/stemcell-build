#!/bin/bash 

cd bosh-repo
sudo bundle install --local
sudo bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz]
