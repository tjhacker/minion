#!/bin/bash

git clone https://github.com/tjhacker/minion.git
mkdir -p mspoke/certbundle/centos8
cp minion/paper/spoke/Vagrantfile mspoke
cp -r minion/paper/spoke/* mspoke/certbundle
cp minion/paper/common/* mspoke/certbundle
rm mspoke/certbundle/Vagrantfile
cp pam_duo.conf mspoke/certbundle
cd mspoke
vagrant up
vagrant ssh -- '-p 1234'


