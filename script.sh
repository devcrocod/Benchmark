#!/bin/bash
#go to the path
path=$1
cd $path
# test
pwd
# terraform
terraform init
terraform plan
# apply terraform configuration
# terraform apply
# connect db and load schema
# schema.sql
# yandex.tank: ammo1 - instance, ammo2 - queries
yandex-tank -c load.ini