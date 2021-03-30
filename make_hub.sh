#!/bin/bash

git clone https://github.com/tjhacker/minion.git
mkdir -p mhub/certbundle/centos8
cp minion/paper/hub/Vagrantfile mhub
cp -r minion/paper/hub/* mhub/certbundle
cp minion/paper/common/* mhub/certbundle
rm mhub/certbundle/Vagrantfile
cp pam_duo.conf mhub/certbundle
cd mhub
vagrant up
vagrant ssh -- '-p 1234'


