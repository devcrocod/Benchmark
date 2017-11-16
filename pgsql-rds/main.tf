provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "eu-west-1"
}

resource "aws_db_instance" "default" {
	allocated_storage = "${var.storage}"
	identifier = "${var.identifier}"
	storage_type = "${var.storage_type}"
	engine = "${var.engine}"
	engine_version = "${var.engine_version}"
	instance_class = "${var.instance_class}"
	publicly_accessible = "${var.publicly_accessible}"
	name = "${var.db_name}"
	username = "${var.username}"
	password = "${var.password}"
}
