#!/bin/bash
#go to the path
path=$1
cd $path
# terraform
ans=''
while [[ $ans != 'no' ]]; do
	#statements
	echo 'Do you want to create aws instance? [yes/no]'
	read ans 
	if [[ $ans == 'yes' ]]; then
		terraform init
		terraform plan
		# apply terraform configuration
		terraform apply
		break
	fi
done
# connect db and load schema
ans=''
while [[ $ans != 'no' ]]; do
	echo 'Do you want to load schema? [yes/no]'
	read ans
	if [[ $ans == 'yes' ]]; then
		host=`grep 'address' $path/terraform.tfstate | sed 's/ *"address": "//' | sed 's/",//'`
		psql --host=$host --port=5432 --username=postgres --password --dbname=postgres -f $path/schema.sql
	fi
done

echo "Load queries."
# yandex.tank: ammo1 - instance, ammo2 - queries
yandex-tank -c load.ini
exit 0