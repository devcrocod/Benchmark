# provider "aws" {
#	access_key = "${var.aws_access_key}"
#	secret_key = "${var.aws_secret_key}"
#	region     = "eu-west-1"
#}

resource "aws_db_instance" "default" {
	allocated_storage 	 = 1
	identifier			 = "dbpg-rds"
	storage_type		 = "gp2"
	engine 			  	 = "postgres"
	engine_version 	  	 = "10.0"
	instance_class 	  	 = "db.t2.micro"
	name 			  	 = "dbpg"
	username 		  	 = "postgres"
	password 		  	 = "password"
}
