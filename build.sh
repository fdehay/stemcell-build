#!/bin/bash 
bundle install --local
bundle exec rake stemcell:build_os_image[ubuntu,trusty,$PWD/tmp/ubuntu_base_image.tgz]