#!/bin/bash 

cd bosh-repo
su ubuntu -c "gem install bundle"
su ubuntu -c "bundle install --local"
su ubuntu -c "bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz]"
