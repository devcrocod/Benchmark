provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "eu-west-1"
}

resource "aws_redshift_cluster" "test_redshift_cluster" {
	cluster_identifier = "${var.cluster_identifier}"
	database_name = "${var.database_name}"
	master_username = "${var.master_username}"
	master_password = "${var.master_password}"
	node_type = "${var.node_type}"
	cluster_type = "${var.cluster_type}"
	number_of_nodes = "${var.number_of_nodes}"

	port = "${var.cluster_port}"
	
	vpc_security_group_ids = ["${var.vpc_security_group_ids}"]
}