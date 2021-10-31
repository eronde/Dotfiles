#!/bin/sh

find ./plugins/ -type d -maxdepth 1 -exec sh -c "echo {};cd {}; git checkout;git pull origin master;" \;
#Install
